require 'spec_helper'
require './lib/minmax'

describe MinMax do
  describe '#sum_without_min_max' do
    it 'returns 0, for 1 number parameter' do
      min_max = MinMax.new(1)

      result = min_max.sum_without_min_max

      expect(result).to eql 0
    end

    it 'returns 0, for 2 parameters' do
      min_max = MinMax.new(1, 2)

      result = min_max.sum_without_min_max

      expect(result).to eql 0
    end

    it 'returns 2, for 1, 2 and 3 as parameters' do
      min_max = MinMax.new(1, 2, 3)

      result = min_max.sum_without_min_max

      expect(result).to eql 2
    end

    it 'returns 14, for [1,2,3,4,5,6] as parameter' do
      min_max = MinMax.new(1, 2, 3, 4, 5, 6)

      result = min_max.sum_without_min_max

      expect(result).to eql 14
    end

    it 'returns 14, for [1,2,3,4,5,6] as parameter' do
      min_max = MinMax.new(1, 2, 3, 4, 5, 6, 'fer')

      result = min_max.sum_without_min_max

      expect(result).to eql 14
    end

    it 'returns Error, without parameters (nil)' do
      min_max = MinMax.new

      expect { min_max.sum_without_min_max }.to raise_error(ArgumentError)
    end

    it "returns Error, for '' as parameter" do
      min_max = MinMax.new('')

      expect { min_max.sum_without_min_max }.to raise_error(ArgumentError)
    end
  end

  describe '#numbers' do
    it 'returns [], without parameters (nil)' do
      min_max = MinMax.new

      result = min_max.numbers

      expect(result).to eql []
    end

    it 'returns [1], for 1 as parameter' do
      min_max = MinMax.new(1)

      result = min_max.numbers

      expect(result).to eql [1]
    end

    it 'returns [], for "test" as parameter' do
      min_max = MinMax.new("test")

      result = min_max.numbers

      expect(result).to eql []
    end
  end
end
