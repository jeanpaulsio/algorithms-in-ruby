# Problem:
# Given a sentence, reverse the words of the sentence
#
# Given: "i live in a house"
# Result: "house a in live i"

class ReverseWords
  class NilInput < StandardError; end

  def self.run(sentence)
    raise NilInput if sentence.nil?

    i = sentence.length
    j = sentence.length
    result = ""

    while i >= 0
      if sentence[i] == " "
        result += " " unless result.empty?
        result += sentence[(i + 1)...j]
        j = i
      end

      i -= 1
    end

    first_word = sentence[(i + 1)...j]
    unless first_word.empty?
      result += " " unless result.empty?
      result += first_word
    end

    result
  end
end
