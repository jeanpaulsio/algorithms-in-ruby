# Problem:
# Find the nth number in a Fibonacci series using memoization
#
# Given: 40
# Result: 102_334_155

class Fibonacci
  def self.run(n, hsh = {})
    return 1 if n == 1 || n == 2
    return hsh[n] if hsh[n]

    result = run(n - 1, hsh) + run(n - 2, hsh)
    hsh[n] = result

    result
  end
end
