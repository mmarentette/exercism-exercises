module Port
  IDENTIFIER = :PALE

  def self.get_identifier(port)
    port[..3].upcase.to_sym
  end

  def self.get_terminal(ship_identifier)
    cargo = ship_identifier[..2]

    ["OIL", "GAS"].include?(cargo) ? :A : :B
  end
end