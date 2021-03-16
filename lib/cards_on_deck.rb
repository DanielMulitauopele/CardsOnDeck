# frozen_string_literal: true

require_relative "cards_on_deck/version"

module CardsOnDeck
  class Error < StandardError; end

  require 'cards_on_deck/card'
  require 'cards_on_deck/deck'
end
