# frozen_string_literal: true

module RegExRX2MD
  # Reads RegExRX document and outputs template
  class RegexRX
    attr_reader :title, :search, :flags, :replace, :source

    def initialize(file)
      doc = File.open(file) { |f| Nokogiri::XML(f) }
      @content = doc.xpath('RegExRX_Document')
      @title = doc.xpath('//Window').first['Title'].strip
      @title = File.basename(file, '.regexrx') if @title =~ /^Untitled RegExRX/

      @search = rx_search
      @flags = rx_flags
      @flags_desc = describe_flags
      @replace = rx_replace
      @source = rx_source

      @search.sub!(/^(\(\?[-misUXxJ]+\))?/, "(?#{@flags})")
    end

    def to_markdown(template)
      out = ERB.new(template).result(binding)

      out.force_encoding('utf-8')
    end

    def rx_search
      grab_string('fldSearch')
    end

    def rx_replace
      grab_pref('Do Replace') ? grab_string('fldReplace') : false
    end

    def rx_source
      source = grab_string('fldSource')
      source.empty? ? false : source
    end

    def rx_flags
      positives = []
      negatives = []

      if grab_opt('Treat Target As One Line')
        positives << 'm'
      else
        negatives << 'm'
      end

      if grab_opt('Dot Matches Newline')
        positives << 's'
      else
        negatives << 's'
      end

      if grab_opt('Case Sensitive')
        negatives << 'i'
      else
        positives << 'i'
      end

      negatives << 'U' if grab_opt('Greedy')

      search_flags = flags_in_search
      unless search_flags.nil?
        ps = search_flags[0] || nil
        ns = search_flags[1] || nil
        positives.concat(ps.delete_if { |pos| positives.include?(pos) }) unless ps.nil?
        negatives.concat(ns.delete_if { |neg| negatives.include?(neg) }) unless ns.nil?
      end

      flags = positives.sort.join('')
      flags += "-#{negatives.sort.join('')}" unless negatives.empty?

      flags.empty? ? false : flags
    end

    def flags_in_search
      @search ||= rx_search
      positives = []
      negatives = []

      res = @search.match(/\(\?([-msiUxXJ]+)\)/)
      res ? res[1].split(/-/).map(&:split) : nil
    end

    def describe_flags
      @flags ||= rx_flags

      positives, negatives = @flags.split(/-/)
      descs = {
        m: ['Treat target as one line', 'Do not treat target as one line'],
        i: ['Case insensitive', 'Case sensitive'],
        s: ['Dot matches newline', 'Dot does not match newline'],
        U: ['Not greedy', 'Greedy'],
        x: ['Free spacing', 'No free spacing'],
        X: ['Character following \ must have special meaning', 'Character following \ treated as literal'],
        J: ['Allow duplicate group names', 'Disallow duplicate group names']
      }

      ps = positives.nil? ? [] : positives.split('').map(&:to_sym)
      ns = negatives.nil? ? [] : negatives.split('').map(&:to_sym)

      desc = []

      %i[m i s U J X x].each do |flag|
        desc << if ps.include?(flag)
                  "#{flag.to_s}: #{descs[flag][0]}"
                elsif ns.include?(flag)
                  "-#{flag.to_s}: #{descs[flag][1]}"
                end
      end

      desc.delete_if(&:nil?).sort.map { |f| "* #{f}" }.join("\n")
    end

    def grab_string(name)
      out = @content.xpath("//Control[@name=\"#{name}\"]").first
                    .content
                    .strip
                    .force_encoding('utf-8')
      out.unpack
    end

    def grab_pref(name)
      @content.xpath("//Preference[@name='#{name}']").first['value'] == 'true'
    end

    def grab_opt(name)
      @content.xpath("//OptionMenu[@text='#{name}']").first['checked'] == 'true'
    end
  end
end
