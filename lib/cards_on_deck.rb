# frozen_string_literal: true

require_relative "cards_on_deck/version"

module CardsOnDeck
  class Error < StandardError; end

  def self.card 
    puts "This is a card!"

    arr = [1, 2, 3]
  end
end
