# frozen_string_literal: true

# Convenience methods for algorithms
module AlgorithmHelper
  def empty_input?(input)
    input.nil? ||
      input.empty? ||
      (input.is_a?(String) && input.strip.empty?)
  end
end
