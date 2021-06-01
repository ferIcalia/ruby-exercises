class Deck
  attr_reader :cards

  def initialize
    @cards = (1..100).to_a
  end

  def shuffle!
    @cards.shuffle!
  end

  def deal(number_of_cards = 1)
    raise OutOfCardsError if empty?

    @cards.pop number_of_cards
  end

  def empty_cards!
    @cards = []
  end

  def empty?
    @cards.empty?
  end
end

class OutOfCardsError < StandardError; end
