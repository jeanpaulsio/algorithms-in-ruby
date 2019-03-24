# Problem:
# Write a function that reverse a string of words
#
# Given:  "foo bar baz quux"
# Result: "quux baz bar foo"
#
# Explanation:
# This will be done by traversing the string backwards
# Keep two pointers, one is the current position, one is the word's end
# When you get to a blank space, append the substring from the pointer to the words end to the result
# Update the pointer for the word's end
# When finished traversing, you still have to add the first word. Since we're checking for blank spaces,
#     the first world will never get appended to the result

class ReverseString
  def self.run(str)
    result = ''

    word_end = str.length
    i = str.length - 1

    while i >= 0
      if str[i] == ' '
        result += ' ' unless result.empty?
        result += str[i+1...word_end]
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