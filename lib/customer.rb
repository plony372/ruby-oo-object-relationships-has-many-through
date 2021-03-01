class Customer
    attr_accessor :name, :age
  
    @@all = []
  
    def initialize(name, age)
      @name = name
      @age = age
      @@all << self
    end

    def new_meal(waiter_instance, total, tip=0)
        Meal.new(waiter_instance, self, total, tip )
    end

    def meals
        Meal.all.select {|meal| meal.customer == self}
    end

    def waiters
       self.meals.map {|waiter| waiter.waiter}
    end

    def self.all
      @@all
    end
  
  end 