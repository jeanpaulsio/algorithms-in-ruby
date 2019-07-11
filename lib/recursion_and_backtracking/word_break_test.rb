require_relative '../../test_helper'
require_relative 'word_break'

describe WordBreak do
  describe 'base cases' do
    it 'should break correctly for a single letter' do
      dictionary = { :i => true }
      sentence = 'i'

      expected = "i\n"
      subject = -> { WordBreak.run(dictionary, sentence, sentence.length, "") }
      expect(subject).must_output expected
    end
  end

  describe 'regular cases' do
    it 'should break twice' do
      dictionary = {
        :cat  => true,
        :cats => true,
        :and  => true,
        :sand => true,
        :dog  => true,
      }
      sentence = 'catsanddog'

      a = "cat sand dog\n"
      b = "cats and dog\n"

      subject = -> { WordBreak.run(dictionary, sentence, sentence.length, "") }
      expect(subject).must_output a + b
    end

    it 'should break correctly for full sentences' do
      dictionary = {
        :i        => true,
        :like     => true,
        :ice      => true,
        :cream    => true,
        :icecream => true,
        :and      => true,
        :man      => true,
        :go       => true,
        :mango    => true
      }
      sentence = "ilikeicecreamandmango"

      a = "i like ice cream and man go\n"
      b = "i like ice cream and mango\n"
      c = "i like icecream and man go\n"
      d = "i like icecream and mango\n"

      subject = -> { WordBreak.run(dictionary, sentence, sentence.length, "") }
      expect(subject).must_output a + b + c + d
    end
  end
end
