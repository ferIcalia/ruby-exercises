require "spec_helper"
require "./lib/jadencase"

describe JadenCase do
  it "returns How Can Mirrors Be Real If Our Eyes Aren't Real, for 'How can mirrors be real if our eyes aren't real' as parameter" do
    result = JadenCase.capitalize_text("How can mirrors be real if our eyes aren't real")

    expect(result).to eql "How Can Mirrors Be Real If Our Eyes Aren't Real"
  end

  it "returns Error, for '' as parameter" do
    expect { JadenCase.capitalize_text('') }.to raise_error ArgumentError
  end

  it "returns F, for f as parameter" do
    result = JadenCase.capitalize_text('f')

    expect(result).to eql "F"
  end

  it "returns Error, for 123 as parameter" do
    expect { JadenCase.capitalize_text(123) }.to raise_error ArgumentError
  end
end
