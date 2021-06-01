require 'prime'

module Calc
  class << self
    def add(*args)
      args.reduce(:+)
    end

    def sub(_a, _b)
      _a - _b
    end

    def mul(*args)
      args.reduce(:*)
    end

    def div(a, b)
      (a.to_f / b.to_f)
    end

    def factors(_n)
      factors = []
      (1.._n).each do |index|
        factors << index if (_n % index).zero?
      end

      factors
    end

    def prime(n)
      n.prime?
    end

    def primes_in_range(first, last)
      numbers = (first..last).to_a
      prime_numbers = []

      numbers.each do |number|
        counter = 0
        (1..number).each do |i|
          counter += 1 if (number % i).zero?
        end
        prime_numbers << number if counter == 2
      end

      prime_numbers
    end
  end
end
