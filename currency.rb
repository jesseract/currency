class Currency
  def initialize(amount, currency_code)
    @amount = amount
    @currency_code = currency_code
  end

  def amount
    return @amount
  end
#attr_reader :amount would do the same thing

  def currency_code
    return @currency_code
  end


end
