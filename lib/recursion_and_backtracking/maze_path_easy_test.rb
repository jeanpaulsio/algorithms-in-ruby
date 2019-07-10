require_relative '../../test_helper'
require_relative 'maze_path_easy'

class MazePathEasyTest < Minitest::Test
  def test_map_is_nil
    assert_equal false, MazePathEasy.run(nil, 0, 0)
  end

  def test_map_is_not_a_square
    arr = [
      [0, 1, 1, 1, 0],
      [0, 0, 0, 1, 0],
      [1, 0, 0, 0, 0],
      [1, 1, 1, 0, 0],
    ]
    actual = MazePathEasy.run(arr, 0, 0)
    assert actual
  end

  def test_single_length_map_with_path
    arr = [
      [0],
    ]
    actual = MazePathEasy.run(arr, 0, 0)
    assert actual
  end

  def test_single_length_map_without_path
    arr = [
      [1],
    ]
    actual = MazePathEasy.run(arr, 0, 0)
    assert_equal false, actual
  end

  def test_double_length_map
    arr = [
      [0, 0],
      [1, 0],
    ]
    actual = MazePathEasy.run(arr, 0, 0)
    assert actual
  end

  def test_map_with_all_walls
    arr = [
      [1, 1, 1, 1],
      [1, 1, 1, 1],
      [1, 1, 1, 1],
      [1, 1, 1, 1],
    ]
    actual = MazePathEasy.run(arr, 0, 0)
    assert_equal false, actual
  end

  def test_map_with_all_paths
    arr = [
      [0, 0, 0, 0],
      [0, 0, 0, 0],
      [0, 0, 0, 0],
      [0, 1, 0, 0],
    ]
    actual = MazePathEasy.run(arr, 0, 0)
    assert actual
  end

  def test_map_with_path_to_end
    arr = [
      [0, 1, 1, 1],
      [0, 0, 0, 1],
      [1, 0, 0, 0],
      [1, 1, 1, 0],
    ]
    actual = MazePathEasy.run(arr, 0, 0)
    assert actual
  end

  def test_map_with_no_path_to_end
    arr = [
      [0, 1, 1, 1],
      [0, 0, 0, 1],
      [1, 0, 0, 0],
      [1, 1, 1, 1],
    ]
    actual = MazePathEasy.run(arr, 0, 0)
    assert_equal false, actual
  end
end
