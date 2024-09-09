class Luhn
  def self.valid?(input)
    input = input.delete(" ")
    return false if input.length <= 1
    return false if input =~ /\D/

    reversed_digits = input.chars.map(&:to_i).reverse

    sum = reversed_digits.map.with_index do |digit, i|
      i.odd? ? double_then_sum(digit) : digit
    end.sum

    divisible_by?(sum, 10)
  end

  private

  def self.double_then_sum(digit)
    (digit * 2).digits.sum
  end

  def self.divisible_by?(dividend, divisor)
    dividend % divisor == 0
  end
end
