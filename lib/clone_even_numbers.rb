# Problem:
# Given an array of numbers, return an array where the even numbers are duplicated
#
# Given:  [1, 2, 3, 4, -1, -1]
# Result: [1, 2, 2, 3, 4, 4]
#
# Explanation:
# Assume the array has enough space
# Initialize two pointers, i and j where i is the last positive number and j is at arr.length
# Traverse the array backwards and if arr[i] is even, set arr[j] to equal arr[i]
# i and j are decremented on every pass and arr[j] is always set to arr[i]

class CloneEvenNumbers
  def self.find_last_positive_number(arr)
    result = arr.find_index { |i| i == -1 }
    if result.nil?
      arr.length - 1
    else
      result - 1
    end
  end
  
  def self.run(arr)
    i = find_last_positive_number(arr)
    j = arr.length

    while i >= 0
      if arr[i].even?
        j -= 1
        arr[j] = arr[i]
      end

      j -= 1
      arr[j] = arr[i]
      i -= 1
    end

    arr
  end
end
