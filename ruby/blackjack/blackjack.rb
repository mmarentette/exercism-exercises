module Blackjack
  HIT = "H"
  SPLIT = "P"
  STAND = "S"
  WIN = "W"

  def self.first_turn(card1, card2, dealer_card)
    case card_range(card1, card2)
    when "low"
      HIT
    when "mid"
      7 <= parse_card(dealer_card) ? HIT : STAND
    when "high"
      STAND
    when "blackjack"
      dealer_card == "ace" ? STAND : WIN
    when "pair of aces"
      SPLIT
    end
  end

  def self.card_range(card1, card2)
    case parse_card(card1) + parse_card(card2)
    when 4..11
      "low"
    when 12..16
      "mid"
    when 17..20
      "high"
    when 21
      "blackjack"
    when 22
      "pair of aces"
    end
  end

  def self.parse_card(card)
    case card
    when "joker" then 0
    when "two" then 2
    when "three" then 3
    when "four" then 4
    when "five" then 5
    when "six" then 6
    when "seven" then 7
    when "eight" then 8
    when "nine" then 9
    when "ten", "jack", "queen", "king" then 10
    when "ace" then 11
    end
  end
end
