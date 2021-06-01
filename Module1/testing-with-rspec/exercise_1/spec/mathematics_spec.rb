require 'spec_helper'
require './lib/mathematics'

describe Mathematics do
  # Sum
  describe '.sum' do
    # Positive numbers
    it 'returns 8, for 3 and 5 as paratemers' do
      result = Mathematics.sum(3, 5)

      expect(result).to eql 8
    end

    it 'return 15 when sending 8, 2 and 5' do
      result = Mathematics.sum(8, 2, 5)

      expect(result).to eql 15
    end

    # Negative numbers
    it 'return -7 when sending -5, -2' do
      result = Mathematics.sum(-5, -2)

      expect(result).to eql(-7)
    end

    it 'return -15 when sending -5, -5 and -5' do
      result = Mathematics.sum(-5, -5, -5)

      expect(result).to eql(-15)
    end

    # Decimal numbers
    it 'return 19.2 when sending 19.10, 10.0' do
      result = Mathematics.sum(9.2, 10.0)

      expect(result).to eql 19.2
    end

    it 'return 5.0 when sending 2.5, 2.5' do
      result = Mathematics.sum(2.5, 2.5)

      expect(result).to eql 5.0
    end
  end

  # Subtract
  describe '.subtract' do
    # Positive numbers
    it 'returns 8, for 10 and 2 as paratemers' do
      result = Mathematics.subtract(10, 2)

      expect(result).to eql 8
    end

    it 'returns 500, for 1000 and 500 as paratemers' do
      result = Mathematics.subtract(1000, 500)

      expect(result).to eql 500
    end

    it 'returns 40, for 50 and 10 as paratemers' do
      result = Mathematics.subtract(50, 10)

      expect(result).to eql 40
    end

    # Negative numbers
    it 'returns -3, for -5 and -2 as paratemers' do
      result = Mathematics.subtract(-5, -2)

      expect(result).to eql(-3)
    end

    it 'returns -100, for -200 and -100 as paratemers' do
      result = Mathematics.subtract(-200, -100)

      expect(result).to eql(-100)
    end

    it 'returns -300, for -300, -150, and 150 as paratemers' do
      result = Mathematics.subtract(-300, -150, 150)

      expect(result).to eql(-300)
    end

    # Decimal numbers
    context 'when decimal numbers' do
      it 'returns 99.3, for 100.0 and 0.7 as paratemers' do
        result = Mathematics.subtract(100.0, 0.7)

        expect(result).to be 99.3
      end

      it 'returns 765.6, for 700.2, 800.4, 667.5, -2.8 and 0.7 as paratemers' do
        result = Mathematics.subtract(700.2, 800.4, 667.5, -2.8, 0.7)

        expect(result).to be(-765.6)
      end

      it 'returns 56.0, for 60.0 and 4.0 as paratemers' do
        result = Mathematics.subtract(60.0, 4.0)

        expect(result).to be 56.0
      end
    end
  end

  # Multiplication
  describe '.multiplication' do
    # Positive numbers
    it 'returns 100, for 50 and 2 as parameters' do
      result = Mathematics.multiplication(50, 2)

      expect(result).to be 100
    end

    it 'returns 200, for 100 and 2 as parameters' do
      result = Mathematics.multiplication(100, 2)

      expect(result).to be 200
    end

    it 'returns 1000000, for 1000 and 1000 as parameters' do
      result = Mathematics.multiplication(1000, 1000)

      expect(result).to be 1_000_000
    end

    # Negative numbers
    it 'returns 100, for -50 and -2 as parameters' do
      result = Mathematics.multiplication(-50, -2)

      expect(result).to be 100
    end

    it 'returns 500, for -250 and -2 as parameters' do
      result = Mathematics.multiplication(-250, -2)

      expect(result).to be 500
    end

    it 'returns -13500, for -250, -6 and -9 as parameters' do
      result = Mathematics.multiplication(-250, -6, -9)

      expect(result).to be(-13_500)
    end

    # Decimal numbers
    it 'returns 800.0, for 400.0 and 2.0 as parameters' do
      result = Mathematics.multiplication(400.0, 2.0)

      expect(result).to be 800.0
    end

    it 'returns 8000.0, for 4000.0 and 2.0 as parameters' do
      result = Mathematics.multiplication(4000.0, 2.0)

      expect(result).to be 8000.0
    end

    it 'returns 21000.0, for 7000.0 and 3.0 as parameters' do
      result = Mathematics.multiplication(7000.0, 3.0)

      expect(result).to be 21_000.0
    end
  end

  describe '.division' do
    # Positive numbers
    it 'returns 350, for 700 and 2 as parameters' do
      result = Mathematics.division(700, 2)

      expect(result).to be 350
    end

    it 'returns 2, for 1000 and 500 as parameters' do
      result = Mathematics.division(1000, 500)

      expect(result).to be 2
    end

    it 'returns 200, for 800 and 4 as parameters' do
      result = Mathematics.division(800, 4)

      expect(result).to be 200
    end

    # Negative numbers
    it 'returns 2, for -1000 and -500 as parameters' do
      result = Mathematics.division(-1000, -500)

      expect(result).to be 2
    end

    it 'returns 5, for -20 and -4 as parameters' do
      result = Mathematics.division(-20, -4)

      expect(result).to be 5
    end

    it 'returns -1, for -1000, -500, -2 as parameters' do
      result = Mathematics.division(-1000, -500, -2)

      expect(result).to be(-1)
    end

    # Decimal numbers
    it 'returns 10.0, for -100.0 and -10.0 as parameters' do
      result = Mathematics.division(100.0, 10.0)

      expect(result).to be 10.0
    end

    it 'returns 10.0, for -1000.0 and -100.0 as parameters' do
      result = Mathematics.division(1000.0, 100.0)

      expect(result).to be 10.0
    end

    it 'returns 1000001.0, for 1000001.0 and 1000.0 as parameters' do
      result = Mathematics.division(1_000_001.0, 1000.0)

      expect(result).to be 1000.001
    end

    # Division by zero
    it 'returns Error, for 50 and 0 as parameters' do
      expect { Mathematics.division(50, 0) }.to raise_error('divided by 0')
    end
  end
end
