require "spec_helper"
require "./lib/game"

describe Game do
  it "returns Fizz, for 3 as parameter" do
    result = Game.fizz_buzz(3)

    expect(result).to eql "Fizz"
  end

  it "returns Buzz,for 5 as parameter" do
    result = Game.fizz_buzz(5)

    expect(result).to eql "Buzz"
  end

  it "returns FizzBuzz, for 15 as parameter" do
    result = Game.fizz_buzz(15)

    expect(result).to eql "FizzBuzz"
  end

  it "returns the given number, for 8 as parameter" do
    result = Game.fizz_buzz(8)

    expect(result).to eql 8
  end

  it "returns El parametro debe ser un numero, for 'Fer' as parameter" do
    result = Game.fizz_buzz("Fer")

    expect(result).to eql "El parametro debe ser un numero"
  end
end
