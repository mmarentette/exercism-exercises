module SavingsAccount
  def self.years_before_desired_balance(balance, desired_balance)
    years_passed = 0

    until balance >= desired_balance
      balance = annual_balance_update(balance)
      years_passed += 1
    end

    years_passed
  end

  def self.annual_balance_update(balance)
   balance + (balance * interest_rate(balance).abs / 100)
  end

  def self.interest_rate(balance)
    case balance
    when ...0
      -3.213
    when 0...1000
      0.5
    when 1000...5000
      1.621
    when 5000...1000000000
      2.475
    end
  end
end