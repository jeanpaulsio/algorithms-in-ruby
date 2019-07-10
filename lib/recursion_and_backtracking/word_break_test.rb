require_relative '../../test_helper'
require_relative 'word_break'

class WordBreakTest < Minitest::Test
  def test_single_letter
    dictionary = {
      :i        => true,
    }
    sentence = "i"

    a = "i\n"

    assert_output(a) do
      WordBreak.run(dictionary, sentence, sentence.length, "")
    end
  end

  def test_full_sentence_1
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

    assert_output(a + b + c + d) do
      WordBreak.run(dictionary, sentence, sentence.length, "")
    end
  end

  def test_full_sentence_2
    dictionary = {
      :cat  => true,
      :cats => true,
      :and  => true,
      :sand => true,
      :dog  => true,
    }
    
    sentence = "catsanddog"

    a = "cat sand dog\n"
    b = "cats and dog\n"

    assert_output(a + b) do
      WordBreak.run(dictionary, sentence, sentence.length, "")
    end
  end
end
