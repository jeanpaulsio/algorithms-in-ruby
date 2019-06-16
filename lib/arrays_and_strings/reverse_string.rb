# Problem:
# Write a function that reverse a string of words
#
# Given:  "foo bar baz quux"
# Result: "quux baz bar foo"

class ReverseString
  def self.run(str)
    result = ''

    word_end = str.length
    i = str.length - 1

    while i >= 0
      if str[i] == ' '
        result += ' ' unless result.empty?
        result += str[i + 1...word_end]
        word_end = i
      end

      i -= 1
    end

    first_word = str[0...word_end]
    unless first_word.empty?
      result += ' ' unless result.empty?
      result += first_word
    end

    result
  end
end
