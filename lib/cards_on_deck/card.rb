class Card
    attr_accessor :suit, :value
    attr_reader :name, :rank, :code

    def initialize(suit, value)
        @suit = suit
        @value = value
        @name = "#{@value} of #{@suit}"
        @rank = card_rank(value, suit)
        @code = code_map[@rank]
    end

    def color
        (@suit && @value) != nil ? color_hash[@suit.capitalize.to_sym] : 'You need to select a suit first'  
    end

    private

    def color_hash
        {
          'Hearts': 'Red',
          'Diamonds': 'Red',
          'Spades': 'Black',
          'Clubs': 'Black'
        }
    end

    def card_rank(value, suit)  
        card_value = {
            "Ace" => 14, 
            "King" => 13, 
            "Queen" => 12, 
            "Jack" => 11, 
            "Ten" => 10, 
            "Nine" => 9, 
            "Eight" => 8, 
            "Seven" => 7, 
            "Six" => 6, 
            "Five" => 5, 
            "Four" => 4, 
            "Three" => 3, 
            "Two" => 2
        }

        card_suit = {
            "Spades" => 0.04, 
            "Hearts" => 0.03, 
            "Diamonds" => 0.02, 
            "Clubs" => 0.01
        }

        card_value[value] + card_suit[suit]
    end

    def code_map
        {
            14.04 => 'AS', 
            13.04 => 'KS',
            12.04 => 'QS',
            11.04 => 'JS', 
            10.04 => '0S',
            9.04 => '9S', 
            8.04 => '8S',
            7.04 => '7S',
            6.04 => '6S',
            5.04 => '5S',
            4.04 => '4S',
            3.04 => '3S',
            2.04 => '2S',
            14.03 => 'AH', 
            13.03 => 'KH',
            12.03 => 'QH',
            11.03 => 'JH', 
            10.03 => '0H',
            9.03 => '9H', 
            8.03 => '8H',
            7.03 => '7H',
            6.03 => '6H',
            5.03 => '5H',
            4.03 => '4H',
            3.03 => '3H',
            2.03 => '2H',
            14.02 => 'AD', 
            13.02 => 'KD',
            12.02 => 'QD',
            11.02 => 'JD', 
            10.02 => '0D',
            9.02 => '9D', 
            8.02 => '8D',
            7.02 => '7D',
            6.02 => '6D',
            5.02 => '5D',
            4.02 => '4D',
            3.02 => '3D',
            2.02 => '2D',
            14.01 => 'AC', 
            13.01 => 'KC',
            12.01 => 'QC',
            11.01 => 'JC', 
            10.01 => '0C',
            9.01 => '9C', 
            8.01 => '8C',
            7.01 => '7C',
            6.01 => '6C',
            5.01 => '5C',
            4.01 => '4C',
            3.01 => '3C',
            2.01 => '2C',
        }
    end
end