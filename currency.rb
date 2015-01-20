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

  def tender(currency)
    @currency_code = currency
  end
#attr_writer :currency_code would do the same thing
#dollar.tender("USD")

  def ==(currency)
    if currency.amount == @amount &&
      currency.currency_code == @currency_code
      return true
    else
      return false
    end
  end

end

#dollar1.compare(dollar2)
