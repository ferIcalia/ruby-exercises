require 'spec_helper'
require './lib/playing_card_deck'

describe PlayerCreator do
  describe '#players' do
    it 'returns a collection of players' do
      player_creator = PlayerCreator.new(number_of_players: 5)

      players = player_creator.players

      players.each do |player|
        expect(player).to be_a(Player)
        # expect(player).to be_kind_of(Player)
      end
    end

    it 'creates a single player' do
      player_creator = PlayerCreator.new(number_of_players: 1)

      players = player_creator.players

      expect(players.size).to eql 1
    end
  end
end

