require 'minitest/autorun'
require 'minitest/pride'

require './currency.rb'

class CurrencyTest < Minitest::Test
  def test_currency_exists
    assert Currency
  end

  def test_currency_can_be_created
    assert Currency.new(1, "dollar")
  end

  def test_currency_can_be_created_and_retrieved
    currency = Currency.new(3, "dollar")
    assert_equal 3, currency.amount
    assert_equal "dollar", currency.currency_code
  end



end
