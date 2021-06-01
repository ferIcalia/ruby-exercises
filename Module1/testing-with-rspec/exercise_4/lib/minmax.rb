class MinMax

  def initialize(*args)
    @args = args
  end

  def sum_without_min_max
    raise ArgumentError if numbers.empty?

    return 0 if numbers.length < 2

    numbers.reduce(:+) - (min + max)
  end

  def min
    numbers.min
  end

  def max
    numbers.max
  end

  def numbers
    @numbers ||= @args.select { |number| number.is_a? Numeric }
  end
end
