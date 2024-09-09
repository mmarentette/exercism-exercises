class PhoneNumber
  PHONE_NUMBER = /^[2-9]\d{2}[2-9]\d{6}$/

  def self.clean(string)
    string
      .gsub(/\D/, "") # Delete non-digits
      .sub(/^1/, "") # Delete leading 1
      .slice(PHONE_NUMBER)
  end
end
