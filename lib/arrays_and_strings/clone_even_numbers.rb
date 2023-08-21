# Problem:
# Given an array of numbers, return an array where the even numbers are duplicated
#
# Given:  [1, 2, 3, 4]
# Result: [1, 2, 2, 3, 4, 4]

class CloneEvenNumbers
  def self.run(arr)
    # Define pointers
    even_count = arr.count(&:even?)
    i = arr.length - 1
    j = even_count + arr.length - 1

    # Make array big enough
    even_count.times { arr.push(nil) }

    # Run algorithm
    while i >= 0
      if arr[i].even?
        arr[j] = arr[i]
        j -= 1
      end

      arr[j] = arr[i]
      j -= 1

      i -= 1
    end

    arr
  end
end
