require('minitest/autorun')
require('minitest/reporters')
require_relative('../Customer.rb')
require_relative('../Drink.rb')

Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class TestCustomer < MiniTest::Test

def setup
@customer1 = Customer.new("Shaheen", 1000, 17, 2)
@customer2 = Customer.new("Jan", 2, 19, 3)

@drink1 = Drink.new("DrinkA", 4, 2)
@drink2 = Drink.new("DrinkB", 5, 3)

end

def test_has_name
  assert_equal("Shaheen", @customer1.name)
  assert_equal("Jan", @customer2.name)
end

def test_has_wallet
  assert_equal(2, @customer2.wallet)
end

def test_has_age
  assert_equal(17,@customer1.age)
end

def test_has_drunkenness
  assert_equal(3, @customer2.drunkenness)
end


def test_customer_can_afford__true
  affordability = @customer1.customer_can_afford(@drink1)
  assert_equal(true, affordability)
end

def test_customer_can_afford__false
  affordability = @customer2.customer_can_afford(@drink1)
  assert_equal(false, affordability)
end

def test_reduce_wallet()
  reduced_money=@customer1.reduce_wallet(@drink1.price)
  assert_equal(996,reduced_money)
end

def test_drunkenness_total
  assert_equal(4,@customer1.drunkenness_total(@drink1))
end


end
