# frozen_string_literal: true

require_relative '../algorithm_helper'

# Problem:
# Given an array of numbers, replace each even number with two
# of the same number
#
# Given:  [1, 2, 3, 4, -1, -1]
# Result: [1, 2, 2, 3, 4, 4]
class CloneEvenNumbers
  class AllEmptySpacesError < StandardError; end

  class << self
    include AlgorithmHelper

    def run(arr)
      return nil if empty_input?(arr)

      i = find_last_positive_number(arr)
      j = arr.length - 1

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

    private

    def find_last_positive_number(arr)
      raise AllEmptySpacesError if arr.first.negative?

      arr.find_index(&:negative?)&.pred || arr.length - 1
    end
  end
end
