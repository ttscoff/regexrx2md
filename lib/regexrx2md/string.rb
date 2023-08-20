# frozen_string_literal: true

# String helpers
class ::String
  def unpack
    [self].pack('H*').gsub(/\r/, "\n")
  end

  def indent
    out = ''
    split("\n").each { |line| out += "    #{line}\n" }
    out
  end

  def to_js
    gsub(%r{(?mi)(?<!\\)/}, '\/')
  end

  def snippet_note
    split("\n").map { |line| "> #{line}" }.join("\n")
  end
end
