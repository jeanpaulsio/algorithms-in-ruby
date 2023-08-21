require_relative "../../test_helper"
require_relative "maze_path_easy"

describe MazePathEasy do
  describe "edge cases" do
    it "should be false when array is nil" do
      actual = MazePathEasy.run(nil, 0, 0)
      expect(actual).must_equal false
    end

    it "should work for rectangular arrays" do
      arr = [
        [0, 1, 1, 1, 0],
        [0, 0, 0, 1, 0],
        [1, 0, 0, 0, 0],
        [1, 1, 1, 0, 0]
      ]
      actual = MazePathEasy.run(arr, 0, 0)
      expect(actual).must_equal true
    end
  end

  describe "base cases" do
    it "should work for single length map with only a path" do
      arr = [
        [0]
      ]
      actual = MazePathEasy.run(arr, 0, 0)
      expect(actual).must_equal true
    end

    it "should work for single length map with only a wall" do
      arr = [
        [1]
      ]
      actual = MazePathEasy.run(arr, 0, 0)
      expect(actual).must_equal false
    end

    it "should find path for double length map" do
      arr = [
        [0, 0],
        [1, 0]
      ]
      actual = MazePathEasy.run(arr, 0, 0)
      expect(actual).must_equal true
    end
  end

  describe "regular cases" do
    it "should return false with maze of all walls" do
      arr = [
        [1, 1, 1, 1],
        [1, 1, 1, 1],
        [1, 1, 1, 1],
        [1, 1, 1, 1]
      ]
      actual = MazePathEasy.run(arr, 0, 0)
      expect(actual).must_equal false
    end

    it "should return true with maze of all paths" do
      arr = [
        [0, 0, 0, 0],
        [0, 0, 0, 0],
        [0, 0, 0, 0],
        [0, 0, 0, 0]
      ]
      actual = MazePathEasy.run(arr, 0, 0)
      expect(actual).must_equal true
    end

    it "should find a path to the end" do
      arr = [
        [0, 1, 1, 1],
        [0, 0, 0, 1],
        [1, 0, 0, 0],
        [1, 1, 1, 0]
      ]
      actual = MazePathEasy.run(arr, 0, 0)
      expect(actual).must_equal true
    end

    it "should not find a path to the end" do
      arr = [
        [0, 1, 1, 1],
        [0, 0, 0, 1],
        [1, 0, 0, 0],
        [1, 1, 1, 1]
      ]
      actual = MazePathEasy.run(arr, 0, 0)
      expect(actual).must_equal false
    end
  end
end
