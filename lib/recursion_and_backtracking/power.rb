# Problem:
# Given two integers x and n, write a function to computer x^n.
# Assume x and n are small and that overflow doesn't happen
#
# Given: 5, 2
# Result: 25

class Power
  def self.run(x, n)
    return 1 if n.zero?
    return x if x == 1

    m = run(x, n / 2)
    n.even? ? m * m : m * m * x
  end
end
