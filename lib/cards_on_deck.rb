# frozen_string_literal: true

require_relative "cards_on_deck/version"

module CardsOnDeck
  class Error < StandardError; end

  require 'cards_on_deck/gem_card'
  require 'cards_on_deck/gem_deck'
end
