module ArmstrongNumbers
  def self.include?(number)
    digits = number.digits
    length = digits.count
    
    number == digits.sum { |d| d**length }
  end
end
