# Problem:
# This is the same as maze_path_easy except you are allowed to traverse
# in all directions (down, right, left, up)

class MazePathHard
  def self.run(arr, i, j, path_so_far)
    return false if arr.nil?
    return false if oob?(arr, i, j) || arr[i][j] == 1 || path_so_far["#{i}#{j}"]
    return true if i == arr.length - 1 && j == arr.length - 1

    path_so_far["#{i}#{j}"] = true

    points = [
      [i + 1, j],
      [i - 1, j],
      [i, j + 1],
      [i, j - 1],
    ]

    points.each do |point|
      k, l = point

      return true if run(arr, k, l, path_so_far)
    end

    path_so_far["#{i}#{j}"] = false
  end

  private

    def self.oob?(arr, i, j)
      i < 0 || i >= arr.length || j < 0 || j >= arr[0].length
    end
end
