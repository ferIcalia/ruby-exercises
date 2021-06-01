class StringCalculator
  def initialize(numbers = '')
    @numbers = numbers
  end

  def add
    return '' if @numbers.empty?

    sum
  end

  def sum
    @numbers.scan(/\d+/).map(&:to_i).reduce(:+)
  end
end
