require 'spec_helper'
require './lib/string_calculator'

describe StringCalculator do
  it 'returns "", for "" as parameter' do
    string_calculator = StringCalculator.new

    result = string_calculator.add

    expect(result).to eql ''
  end

  it 'returns 1, for 1 as parameter' do
    string_calculator = StringCalculator.new("1")

    result = string_calculator.add

    expect(result).to eql 1
  end

  it 'returns 3, for 2 and 1 as parameter' do
    string_calculator = StringCalculator.new("2, 1")

    result = string_calculator.add

    expect(result).to eql 3
  end

  # #Duda en ciclo de desarrollo, tomaba maximo 3 luego cualquier numero
  # # it 'returns Error, for 1, 2, 3, 4 as parameters' do
  # #   string_calculator = StringCalculator.new(1, 2, 3, 4)

  # #   expect { string_calculator.add_int }.to raise_error ArgumentError
  # # end

  it 'returns 6, for 1\n2,3 as parameter' do
    string_calculator = StringCalculator.new("1\n2,3")

    result = string_calculator.add

    expect(result).to eql 6
  end

  it 'returns 3, for //;\n1;2 as parameter' do
    string_calculator = StringCalculator.new("//**\n10**5")

    result = string_calculator.add

    expect(result).to eql 15
  end
end
