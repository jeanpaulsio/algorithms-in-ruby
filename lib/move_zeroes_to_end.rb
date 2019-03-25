# Problem:
# Given an array of random integers, push all zeroes to the end.
# The order must be maintained.
#
# Given: [1, 2, 0, 4, 3, 0, 5, 0]
# Result: [1, 2, 4, 3, 5, 0, 0, 0]
#
# Explanation:
# We initialize a pointer and iterate through the array a first time.
# When we see a non-zero number, we set arr[pointer] to be the current item.
# We also move the pointer forward. What this does is moves all of our
#   non-zero numbers to the left
# Iterate through the array again, starting from the pointer - making all
#   items from the pointer all the way to the right equal to 0

class MoveZeroesToEnd
  def self.run(arr)
    pointer = 0

    arr.each do |item|
      unless item.zero?
        arr[pointer] = item
        pointer += 1
      end
    end

    pointer.upto(arr.length - 1) { |i| arr[i] = 0 }
    
    arr
  end
end