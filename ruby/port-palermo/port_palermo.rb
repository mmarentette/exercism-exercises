class Port
  IDENTIFIER = :PALE

  def self.get_identifier(port)
    port[..3].upcase.to_sym
  end
end