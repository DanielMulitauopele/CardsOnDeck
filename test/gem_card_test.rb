require './test/test_helper'
require './lib/cards_on_deck/gem_card'

class GemCardTest < MiniTest::Test
    def setup
        @card = GemCard.new('Hearts', 'Nine')
    end

    def test_it_exists
        assert_instance_of GemCard, @card
    end

    def test_it_has_a_suit
        expected = 'Hearts'
        actual = @card.suit

        assert_equal expected, actual
    end

    def test_it_has_a_value 
        expected = 'Nine'
        actual = @card.value

        assert_equal expected, actual
    end

    def test_it_has_a_name 
        expected = 'Nine of Hearts'
        actual = @card.name

        assert_equal expected, actual
    end

    def test_it_can_calculate_rank
        expected = 9.03
        actual = @card.rank
        
        assert_equal expected, actual
    end

    def test_it_has_a_code 
        expected = '9H'
        actual = @card.code 

        assert_equal expected, actual
    end

    def test_it_has_a_color
        expected = 'Red'
        actual = @card.color

        assert_equal expected, actual
    end

    def test_it_has_a_color_if_suit_is_downcased
        @card.suit = 'hearts'

        expected = 'Red'
        actual = @card.color

        assert_equal expected, actual
    end

    def test_if_there_is_no_suit_error_message_is_returned
        @card.suit = nil

        expected = 'You need to select a suit first'
        actual = @card.color

        assert_equal expected, actual
    end

    def test_if_there_is_no_value_error_message_is_returned
        @card.value = nil

        expected = 'You need to select a suit first'
        actual = @card.color

        assert_equal expected, actual
    end
end