require 'minitest/autorun'
require 'minitest/reporters'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

def print_results(*args)
  result = args.map(&:to_s).join("\n").concat("\n")

  assert !result.nil?
  result
end
