class Scrabble
  LETTER_SCORES = {
    "AEIOULNRST" => 1,
    "DG" => 2,
    "BCMP" => 3,
    "FHVWY" => 4,
    "K" => 5,
    "JX" => 8,
    "QZ" => 10,
  }

  attr_reader :word

  def self.score(word)
    new(word).score
  end

  def initialize(word)
    @word = word.to_s.strip.upcase
  end

  def score
    scores = word.chars.sum(&method(:score_of))
  end

  private

  def score_of(letter)
    _, score = LETTER_SCORES.find { |letters, score| letters.include?(letter) }
    score
  end
end