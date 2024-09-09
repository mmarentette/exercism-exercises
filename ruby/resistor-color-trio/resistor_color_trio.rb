class ResistorColorTrio
  RESISTOR_COLORS = %w[ 
    black
    brown
    red
    orange
    yellow
    green
    blue
    violet
    grey
    white
  ]

  attr_reader :trio_array, :first_digit, :second_digit, :exponent_of_ten

  def initialize(trio_array)
    @trio_array = trio_array
    trio_parser
  end

  def trio_parser
    @first_digit, @second_digit, @exponent_of_ten = trio_array.size.times.map(&method(:resistance_value))
  end

  def resistance_value(index)
    RESISTOR_COLORS.index(trio_array[index])
  end

  def label
    "Resistor value: #{ohms_value} #{metric_prefix}ohms"
  end

  def ohms_value
    (first_digit * 10 + second_digit) * 10**exponent_of_ten / prefix_divisor
  end

  def prefix_divisor
    case exponent_of_ten
    when 0..1 then 10**0
    when 2..4 then 10**3
    when 5..7 then 10**6
    when 8..9 then 10**9
    end
  end

  def metric_prefix
    case exponent_of_ten
    when 0..1 then ""
    when 2..4 then "kilo"
    when 5..7 then "mega"
    when 8..9 then "giga"
    end
  end
end