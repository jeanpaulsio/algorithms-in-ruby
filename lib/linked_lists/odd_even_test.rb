require_relative "../../test_helper"
require_relative "linked_list"
require_relative "odd_even"

describe OddEven do
  subject do
    OddEven.run(LinkedList.generate(2, 1, 4, 5, 2, 8))
  end

  describe "regular cases" do
    it "should return two lists" do
      odd, even = subject

      odd_lambda = lambda do
        until odd.head.nil?
          puts odd.head.value
          odd.head = odd.head.next
        end
      end
      odd_lambda.must_output(/2\s4\s2/)

      even_lambda = lambda do
        until even.head.nil?
          puts even.head.value
          even.head = even.head.next
        end
      end
      even_lambda.must_output(/1\s5\s8/)
    end
  end
end
