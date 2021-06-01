require './spec_helper'
require './lib/playing_card_deck'

describe PlayingCardDeck do
  let(:playing_card_deck) { PlayingCardDeck.new }

  describe '#create_players' do
  end

  describe '#hands' do
    it 'assigns a player 5 cards' do
      playing_card_deck.hands(1)

      expect(playing_card_deck.players[0].hand.size).to eql 5
    end

    context 'when multiple there are multiple players' do
      before do
        playing_card_deck.hands(4)
      end

      it 'assigns each player 5 cards' do
        playing_card_deck.players.each do |player|
          expect(player.hand.size).to eql 5
        end
      end

      it 'assigns 5 different cards to each player' do
        duplicated_cards_on_hand = playing_card_deck.players.map(&:hand).reduce(:&)

        expect(duplicated_cards_on_hand).to be_empty
      end

      it 'raises exeption when number_of_players > 5' do
        expect{ playing_card_deck.hands(6) }.to raise_error MaxAmountOfPlayersExceded
      end
    end
  end


end
