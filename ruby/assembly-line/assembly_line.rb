class AssemblyLine
  BASE_CAR_PRODUCTION_PER_HOUR = 221
  MINUTES_PER_HOUR = 60

  attr_reader :speed

  def initialize(speed)
    @speed = speed
  end

  def working_items_per_minute
    (production_rate_per_hour / MINUTES_PER_HOUR).to_i
  end
  
  def production_rate_per_hour
    BASE_CAR_PRODUCTION_PER_HOUR * speed * error_rate
  end

  private

  def error_rate
    case speed
    when 1..4
      1.0
    when 5..8
      0.9
    when 9
      0.8
    when 10
      0.77
    end
  end
end