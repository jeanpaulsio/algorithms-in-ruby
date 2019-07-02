module Utils
  def pp(arr)
    arr.map(&:to_s).join("\n").concat("\n")
  end
end
