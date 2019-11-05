class Restaurant
  attr_reader :name

  @@all = []
  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    #needs a new array, so it's either select or map... probably select?
    Review.all.select do |rest|
    rest.restaraunt ==self
   end
  
  end

  def customers
    Review.all.select do |cust|
      cust.customer == self
    end.uniq
  end

#   ### Restaurant

# - `Restaurant#reviews` DONE
# - returns an *array* of all reviews for that restaurant

# - `Restaurant#customers`
# - Returns a **unique** list of all customers who have reviewed a particular restaurant.

end
