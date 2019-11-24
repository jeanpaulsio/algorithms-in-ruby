# frozen_string_literal: false

require_relative '../algorithm_helper'

# Problem:
# Given a sentence, reverse it
#
# Given: "Hello world I am JP"
# Result: "JP am I world Hello"
class SentenceReverse
  class << self
    include AlgorithmHelper

    def run(sentence)
      return nil if empty_input?(sentence)

      reversed_sentence = ''
      word_boundary = sentence.length
      i = sentence.length - 1

      while i >= 0
        if sentence[i] == ' '
          add_space(reversed_sentence)
          reversed_sentence += sentence[i.next...word_boundary]
          word_boundary = i
        end

        i -= 1
      end

      append_first_word(reversed_sentence, sentence, word_boundary)
      reversed_sentence
    end

    private

    def add_space(str)
      return if str.empty?

      str << ' '
    end

    def append_first_word(reversed_sentence, sentence, word_boundary)
      first_word = sentence[0...word_boundary]

      return if first_word.empty?

      add_space(reversed_sentence)
      reversed_sentence << first_word
    end
  end
end
