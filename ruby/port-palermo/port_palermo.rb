module Port
  extend self
  
  IDENTIFIER = :PALE

  def get_identifier(port)
    port[..3].upcase.to_sym
  end

  def get_terminal(ship_identifier)
    %w[OIL GAS].include?(cargo_of(ship_identifier)) ? :A : :B
  end

  private

  def cargo_of(ship_identifier)
    ship_identifier[..2]
  end
end
