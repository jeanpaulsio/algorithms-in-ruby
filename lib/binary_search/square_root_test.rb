require_relative '../../test_helper'
require_relative 'square_root'

describe SquareRoot do
  it 'should work for all base cases' do
    1.upto(20) do |i|
      expect(SquareRoot.run(i)).must_equal Math.sqrt(i).floor
    end
  end
end
