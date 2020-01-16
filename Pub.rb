class Pub

  attr_accessor :name, :drinks, :till

  def initialize (name, till)
    @name = name
    @till = till
    @drinks = []
  end


  #methods

  def increase_till(price)
    return @till += price
  end

  def add_drink(drink)
    @drinks.push(drink)
  end

  def drink_sale(customer, drink)
    if (customer.customer_can_afford(drink) == true)
      if (customer.age > 18)
        if (customer.drunkenness_total(drink) <= 6)
          return "You are too drunk!"
        end
        return "You are under age!"
      end
      return "You can't afford the drink!"
    end
  end


end
