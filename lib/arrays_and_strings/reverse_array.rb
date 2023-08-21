# Problem:
# Given an array of items, reverse it in place

class ReverseArray
  def self.run(arr)
    i = 0
    j = arr.length - 1

    while i < j
      arr[i], arr[j] = arr[j], arr[i]
      i += 1
      j -= 1
    end

    arr
  end
end
