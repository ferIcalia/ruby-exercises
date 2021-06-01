class PlayingCard
  attr_accessor :suit, :value

  def initialize(suit, value)
    @suit = suit
    @value = value
  end

  def inspect
    "#{value} of #{suit}"
  end
end
