class Currency
  def initialize(amount, currency_code)
    @amount = amount
    @currency_code = currency_code
  end

  def amount
    @amount
  end
#attr_reader :amount would do the same thing

  def currency_code
    @currency_code
  end

  def tender(currency)
    @currency_code = currency
  end
#attr_writer :currency_code would do the same thing
#dollar.tender("USD")

  def ==(currency)
    if currency.amount == @amount &&
      currency.currency_code == @currency_code
      true
    else
      false
    end
  end

  def +(other)
    if @currency_code != other.currency_code
      raise DifferentCurrencyCodeError
    end

    self.class.new(amount + other.amount, @currency_code)

  end

  def -(other)
    if @currency_code != other.currency_code
      raise DifferentCurrencyCodeError, "You cannot subtract two different currencies"
    end

    self.class.new(amount - other.amount, @currency_code)

  end

  def *(number)
    product = self.class.new(amount * number, @currency_code)
    return product
  end

end

#dollar1.compare(dollar2)
