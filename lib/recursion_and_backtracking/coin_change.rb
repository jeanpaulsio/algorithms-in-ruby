# Problem:
# Given a set of coin change denominations, print the different ways
# you can make the target amount. You can use as many coins of each
# denomination as you'd like
#
# Given: [1, 2, 5], target is 5
# Result: [1, 1, 1, 1, 1], [1, 1, 1, 2], [1, 2, 2], [5]

class CoinChange
  def self.run(coins, target, buffer, next_index, sum)
    return if target <= 0
    return if sum > target

    if sum == target
      p buffer
      return
    end

    next_index.upto(coins.length - 1) do |i|
      buffer.push coins[i]
      run(coins, target, buffer, i, sum + coins[i])
      buffer.pop
    end
  end
end
