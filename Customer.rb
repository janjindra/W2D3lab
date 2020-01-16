class Customer

attr_accessor :name, :wallet, :age, :drunkenness

def initialize(name, wallet, age, drunkenness)
@name = name
@wallet = wallet
@age = age
@drunkenness = drunkenness
end



def customer_can_afford (drink)
  if @wallet > drink.price
    return true
  end
  return false
end

def reduce_wallet(price)
  return @wallet -= price
end

def drunkenness_total(drink)
  return @drunkenness += drink.alcohol_level
end

end
