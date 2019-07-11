require_relative '../../test_helper'
require_relative 'print_combos'

describe PrintCombos do
  describe 'edge cases' do
    it 'should print an empty string given an empty array' do
      expected = ''
      subject = -> { PrintCombos.run([], Array.new(0), 0, 0) }
      expect(subject).must_output expected
    end

    it 'should print an empty string when x > arr.length' do
      expected = ''
      subject = -> { PrintCombos.run([1, 2, 3], Array.new(4), 0, 0) }
      expect(subject).must_output expected
    end
  end

  describe 'base cases' do
    it 'should print results when x = 1, arr.length == 1' do
      expected = print_results [1]
      subject = -> { PrintCombos.run([1], Array.new(1), 0, 0) }
      expect(subject).must_output expected
    end

    it 'should print results when x = 1, arr.length == 2' do
      expected = print_results [1], [2]
      subject = -> { PrintCombos.run([1, 2], Array.new(1), 0, 0) }
      expect(subject).must_output expected
    end
  end

  describe 'regular cases' do
    it 'should print results when = 2, arr.length == 3' do
      expected = print_results [1, 2], [1, 3], [2, 3]
      subject = -> { PrintCombos.run([1, 2, 3], Array.new(2), 0, 0) }
      expect(subject).must_output expected
    end

    it 'should print results when x = 3, arr.length == 4' do
      expected = print_results [1, 2, 3], [1, 2, 4], [1, 3, 4], [2, 3, 4]
      subject = -> { PrintCombos.run([1, 2, 3, 4], Array.new(3), 0, 0) }
      expect(subject).must_output expected
    end

    it 'should print results when x = 3, arr.length == 3' do
      expected = print_results [1, 2, 3]
      subject = -> { PrintCombos.run([1, 2, 3], Array.new(3), 0, 0) }
      expect(subject).must_output expected
    end
  end
end
