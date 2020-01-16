require('minitest/autorun')
require('minitest/reporters')
require_relative('../Drink.rb')

Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class TestDrink < MiniTest::Test

def setup
@drink1 = Drink.new("DrinkA", 4, 2)
@drink2 = Drink.new("DrinkB", 5, 3)

end


def test_has_name
  assert_equal("DrinkB", @drink2.name)
end

def test_has_price
  assert_equal(4, @drink1.price)
end

def test_has_alcohol_level
  assert_equal(2, @drink1.alcohol_level)
end



end
