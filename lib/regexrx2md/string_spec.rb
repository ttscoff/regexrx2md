# frozen_string_literal: true

RSpec.describe RegExRX2MD do
  describe '.indent' do
    it 'indents line' do
      expect('INDENT'.indent).to match /^    INDENT\n/
    end
  end

  describe '.unpack' do
    it 'unpacks hex string' do
      expect('4D45204154'.unpack).to match /^ME AT$/
    end
  end

  describe '.to_js' do
    it 'doubles backslashes' do
      expect('hello\there'.to_js).to match 'hello\\there'
    end
  end

  describe '.snippet_note' do
    it 'adds block quoting' do
      string = 'one
two
three'
      result = '> one
> two
> three'
      expect(string.snippet_note).to match result
    end
  end
end
