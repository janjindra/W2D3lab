require('minitest/autorun')
require('minitest/reporters')
require_relative('../Pub.rb')
require_relative('../Drink.rb')
require_relative('../Customer.rb')


Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class TestPub < MiniTest::Test

def setup
  @pub1 = Pub.new("PubA",0)

  @drink1 = Drink.new("DrinkA", 4, 2)
  @drink2 = Drink.new("DrinkB", 5, 3)

  @customer1 = Customer.new("Shaheen", 1000, 20, 2)
  @customer2 = Customer.new("Jan", 2, 19, 3)
end

#method tests
def test_has_name
  assert_equal("PubA", @pub1.name)
end

# def test_has_drinks
#   assert_equal(["DrinkA", "DrinkB", "DrinkC"],@pub1.drinks)
# end

def test_has_till
  assert_equal(0,@pub1.till)
end

def test_increase_till
  increased_money = @pub1.increase_till(@drink2.price)
  assert_equal(5, increased_money)
end

def test_add_drink
  assert_equal(1,@pub1.add_drink(@drink1).length)
end

def test_drink_sale__drink
  assert_equal("Here is the drink!", @pub1.drink_sale(@customer1, @drink2))
end

def test_drink_sale__no_drink
  assert_equal("No drink for you!", @pub1.drink_sale(@customer2,@drink1))
end

end



# def test_get_drink
#   @pub1.add_drink(@drink1)
#   @pub1.add_drink(@drink2)
#   drink = @pub1.get_drink()
#   assert_equal("DrinkB", drink)
# end
