# frozen_string_literal: true

require 'nokogiri'
require 'erb'
require_relative 'regexrx2md/version'
require_relative 'regexrx2md/string'
require_relative 'regexrx2md/regexrx'

def class_exists?(class_name)
  klass = Module.const_get(class_name)
  klass.is_a?(Class)
rescue NameError
  false
end

if class_exists? 'Encoding'
  Encoding.default_external = Encoding::UTF_8 if Encoding.respond_to?('default_external')
  Encoding.default_internal = Encoding::UTF_8 if Encoding.respond_to?('default_internal')
end

module RegExRX2MD
  DEFAULT_TEMPLATE = <<~ENDOFTEMPLATE
    title: <%= @title %>
    <% if @flags %>
    ## Flags

    > Flags: `(?<%= @flags %>)`

    <%= @flags_desc.snippet_note %>
    <% end %>
    ## Regular Expression Search

    ```ruby
    /<%= @search %>/
    ```<% if @replace %>

    ## Replace

    ```ruby
    "<%= @replace.gsub(/\$/, '\\\\') %>"
    ```<% end %>
    <% if @source %>
    ---

    ## Test string:

    ```text
    <%= @source %>
    ```
    <% end %>

  ENDOFTEMPLATE

  def self.process_file(file, options, template)
    # Process the file, generating a new RegexRX object
    rx = RegexRX.new(file)
    # Name the file with output directory, prefix, and title, with .md extension
    filename = File.join(options[:output], "#{options[:prefix]}#{rx.title}.md")
    # Write the file
    File.open(filename, 'w') { |f| f.print(rx.to_markdown(template)) }
    warn "Regex written to #{filename}"
  end
end
