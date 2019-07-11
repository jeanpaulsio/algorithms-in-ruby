require_relative '../../test_helper'
require_relative 'fibonacci'

describe Fibonacci do
 describe 'regular cases' do
  it 'should work' do
    expect(Fibonacci.run(1)).must_equal 1
    expect(Fibonacci.run(2)).must_equal 1
    expect(Fibonacci.run(3)).must_equal 2
    expect(Fibonacci.run(4)).must_equal 3
    expect(Fibonacci.run(5)).must_equal 5
    expect(Fibonacci.run(6)).must_equal 8
    expect(Fibonacci.run(7)).must_equal 13
    expect(Fibonacci.run(8)).must_equal 21
    expect(Fibonacci.run(20)).must_equal 6_765
    expect(Fibonacci.run(30)).must_equal 832_040
    expect(Fibonacci.run(40)).must_equal 102_334_155
  end
 end
end
