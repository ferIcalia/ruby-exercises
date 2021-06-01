require "./spec_helper"
require "../lib/deck"

describe Deck do
  let(:deck) { Deck.new }

  describe '#shuffle' do
    it 'returns deordered array from 1 to 100 calling the shuffle method' do
      initial_deck_cards = deck.cards.clone

      deck.shuffle!

      expect(deck.cards).not_to eql initial_deck_cards
    end
  end

  describe '#deal' do
    # TODO:
    # Add a test when calling the deal method with more that 1
    it 'deals more than one card' do
      result = deck.deal 5

      expect(result).to eql [96, 97, 98, 99, 100]
    end

    it 'removes cards from the deck' do
      initial_number_of_cards = deck.cards.size

      deck.deal 3
      total_cards_after_dealing = deck.cards.size

      expect(initial_number_of_cards).not_to eql total_cards_after_dealing
    end

    it 'returns a number between 1 and 100 calling the deal' do
      card_taken = deck.deal

      expect(card_taken).to eql [100]
    end

    it 'returns OutOfCardsError when deal is calling and no more cards left' do
      deck.empty_cards!

      expect { deck.deal }.to raise_error OutOfCardsError
    end
  end

  describe '#empty_cards!' do
    it 'empties the deck' do
      deck.empty_cards!

      expect(deck).to be_empty
      # expect { deck.empty_cards! }.to change { deck.cards.size }.from(100).to(0)
      # expect(deck.empty?).to be_truthy
      # expect(deck.empty?).to eql true
    end
  end
end
