# Part I
class Pizza
  Ingredients = [
    :cheese,
      :pepperoni,
      :bacon
  ]

  attr_accessor :customer_pick
  def initialize(customer_pick=[:cheese])
    @customer_pick = customer_pick
  end

    def to_s
      @customer_pick
    end
end

# Part II
class Pizza
    Ingredients = {
      cheese: 0.10,
       green_pepper: 0.30,
       onion: 0.50,
       mushroom: 0.70,
       pepperoni: 1.10,
       jalapeno: 1.30,
       sausage: 1.70,
       bacon: 1.90
    }

  attr_accessor :customer_pick
  def initialize(customer_pick=[:cheese])
    @customer_pick = customer_pick
  end

    def cost
      total = 8.00
      @customer_pick.each do |diff_toppings|
        total += Ingredients[diff_toppings]
      end
      total
    end

    def to_s
      @customer_pick
    end
end

# Phase III
class Pizza
  Ingredients = {
    cheese: 0.10,
     green_pepper: 0.30,
     onion: 0.50,
     mushroom: 0.70,
     pepperoni: 1.10,
     jalapeno: 1.30,
     sausage: 1.70,
     bacon: 1.90
  }

  attr_accessor :customer_pick
  def initialize(customer_pick = [:cheese, :pepperoni])
    @customer_pick = customer_pick
  end

  def cost
    total = 8.00
    @customer_pick.each do |diff_toppings|
      total += Ingredients[diff_toppings]
    end
    total
  end

  def meats
    # @customer_pick & [:sausage, :pepperoni, :bacon]
    meats = []
    @customer_pick.select do |food|
      if [:sausage, :pepperoni, :bacon].include?(food)
        meats << food
      end
    end
  end

  def other_toppings
    @customer_pick & [:cheese,
         :green_pepper,
         :onion,
         :mushroom,
         :jalapeno
       ]
  end
end

# Part IV
class Pizza
  Ingredients = {
    cheese: 0.10,
     green_pepper: 0.30,
     onion: 0.50,
     mushroom: 0.70,
     pepperoni: 1.10,
     jalapeno: 1.30,
     sausage: 1.70,
     bacon: 1.90
  }

  attr_accessor :customer_pick
  def initialize(customer_pick = [:cheese, :pepperoni])
    @customer_pick = customer_pick
  end

  def cost
    total = 8.00
    @customer_pick.each do |diff_toppings|
      total += Ingredients[diff_toppings]
    end
    total
  end

  def meats
    # @customer_pick & [:sausage, :pepperoni, :bacon]
    meats = []
    @customer_pick.select do |food|
      if [:sausage, :pepperoni, :bacon].include?(food)
        meats << food
      end
    end

  end

  def other_toppings
    @customer_pick & [:cheese,
         :green_pepper,
         :onion,
         :mushroom,
         :jalapeno
       ]
  end
  def self.toppings
    Ingredients.each do |pick, cost|
      topping_name = pick
      topping_cost = '%.2f' % cost

      puts "#{topping_name} - $#{topping_cost}"
    end
  end
  def to_s
    @customer_pick
  end
end

maybe = Pizza.new
puts maybe.cost
puts maybe.to_s
puts maybe.meats
