class Calculator
  def initialize
    @input = []
  end

  def <<(number)
    @input << number.to_i
  end

  def add
    # @input.inject { |sum, n| sum + n }
    @input.inject &:+
  end
end
