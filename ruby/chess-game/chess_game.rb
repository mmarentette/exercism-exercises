module Chess
  RANKS = 1..8
  FILES = 'A'..'H'

  class Square
    attr_reader :file, :rank

    def self.build(square_location)
      file, rank = square_location.chars
      new(file:, rank: rank.to_i)
    end

    def initialize(file:, rank:)
      @file = file
      @rank = rank
    end

    def valid?
      RANKS.include?(rank) && FILES.include?(file)
    end

    def to_s
      "#{file}#{rank}"
    end
  end

  def self.move_message(first_name, last_name, square_location)
    nick_name = nick_name(first_name, last_name)
    square = Square.build(square_location)

    if valid_square?(square.rank, square.file)
      "#{nick_name} moved to #{square}"
    else
      "#{nick_name} attempted to move to #{square}, but that is not a valid square"
    end
  end

  def self.nick_name(first_name, last_name)
    first_name, last_name = [first_name, last_name].map(&:upcase).map(&:chars)

    [first_name.first(2), last_name.last(2)].join
  end

  def self.valid_square?(rank, file)
    Square.new(rank:, file:).valid?
  end
end