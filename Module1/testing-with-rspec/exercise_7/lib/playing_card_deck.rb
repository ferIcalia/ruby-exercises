require_relative './deck'
require_relative './playing_card'
require_relative './player'

class DeckCreator
  SUITS = %w[clubs spades hearts diamonds].freeze
  VALUES = %w[2 3 4 5 6 7 8 9 10 J Q K A].freeze

  def initialize
    @cards = []
  end

  def cards
    SUITS.each do |suit|
      VALUES.each do |value|
        @cards << PlayingCard.new(suit, value)
      end
    end

    @cards
  end
end

class PlayerCreator
  def initialize(number_of_players:)
    @number_of_players = number_of_players
  end

  def players
    @players = Array.new(@number_of_players).map { Player.new }
  end
end

class PlayingCardDeck < Deck
  CARDS_PER_HAND = 5

  attr_reader :players

  def hands(number_of_players)
    raise MaxAmuntOfPlayersExceded if number_of_players > 5

    create_players(number_of_players)

    total_cards_to_deal.times do |deal_number|
      deal_card_to_player(players[deal_number % players.size])
    end
  end

  def total_cards_to_deal
    @total_cards_to_deal ||= CARDS_PER_HAND * players.size
  end

  private

  def deal_card_to_player(player)
    player.hand << deal
  end

  def cards
    @cards ||= DeckCreator.new.cards
  end

  def create_players(number_of_players)
    @players = PlayerCreator.new(number_of_players: number_of_players).players
  end
end

class MaxAmuntOfPlayersExceded < StandardError; end
