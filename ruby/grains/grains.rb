class Grains
  TOTAL_SQUARES = 64

  def self.total
    (1..TOTAL_SQUARES).sum(&method(:square))
  end

  def self.square(number)
    raise ArgumentError unless (1..TOTAL_SQUARES).include?(number)
  
    2**(number - 1)
  end
end