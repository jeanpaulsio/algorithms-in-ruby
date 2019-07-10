# Problem:
# Given a valid sentence without any spaces between the words and a
# dictionary of valid English words, find all possible ways to break
# the sentence in individual dictionary words.
#
# Consider this dictionary
# [ i, like, ice, cream, icecream, and, man, go, mango ]
#
# Given: "ilikeicecreamandmango"
# Result:
#   i like ice cream and man go
#   i like ice cream and mango
#   i like icecream and man go
#   i like icecream and mango

class WordBreak
  def self.run(dictionary, sentence, n, result)
    1.upto(n) do |i|
      prefix = sentence[0...i]
      if dictionary[prefix.to_sym]
        if i == n
          result += prefix
          puts result
          return
        end
        run(dictionary, sentence[i..n - 1], n - i, result + prefix + " ")
      end
    end
  end
end
