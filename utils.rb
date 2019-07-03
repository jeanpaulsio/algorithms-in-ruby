require_relative './test_helper'


module Utils
  def print_results(*args)
    result = args.map(&:to_s).join("\n").concat("\n")

    assert !result.nil?
    result
  end
end
