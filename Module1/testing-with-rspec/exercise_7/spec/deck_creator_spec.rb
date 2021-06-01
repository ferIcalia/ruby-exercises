require 'spec_helper'
require './lib/playing_card_deck'

describe DeckCreator do
  let(:deck_creator) { DeckCreator.new }

  describe '#cards' do
    it 'sets cards for a full deck' do
      expect(deck_creator.cards.size).to eql 52
    end
  end
end
