require './spec_helper'
require '../lib/playing_card'

describe PlayingCard do
  let(:playing_card) { PlayingCard.new('clubs', 10) }

  describe '#initialize' do
    it 'sets suits' do
      expect(playing_card.suit).to eql 'clubs'
    end

    it 'sets value' do
      expect(playing_card.value).to eql 10
    end
  end

  describe '#inspect' do
    it 'returns a string' do
      description = playing_card.inspect

      expect(description).to be_a String
    end

    it 'returns the description of the card' do
      description = playing_card.inspect

      expect(description).to eql '10 of clubs'
    end
  end
end
