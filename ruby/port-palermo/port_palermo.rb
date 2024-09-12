module Port
  extend self
  
  IDENTIFIER = :PALE

  def get_identifier(port)
    port[..3].upcase.to_sym
  end

  def get_terminal(ship_identifier)
    cargo = ship_identifier[..2]

    %w[OIL GAS].include?(cargo) ? :A : :B
  end
end