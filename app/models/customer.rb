class Customer
  attr_accessor :given_name, :family_name

  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def self.all
    @@all
  end

  def restaurants
    Review.all.select do |rest|
    rest.restaurant == self
    end

  end

  def add_review(restaurant,rating)
    Review.new(self,restaurant,rating)
  end
#   ## Customer

# - `Customer#restaurants` FAILED
# - Returns a **unique** array of all restaurants a customer has reviewed
# - `Customer#add_review(restaurant, rating)`
# - given a **restaurant object** and a star rating (as an integer), creates a new review and associates it with that customer and restaurant.


# ##


# - `Customer#num_reviews`
#   - Returns the total number of reviews that a customer has authored
# - `Customer.find_by_name(name)`
#   - given a string of a **full name**, returns the **first customer** whose full name matches
# - `Customer.find_all_by_given_name(name)`
#   - given a string of a given name, returns an **array** containing all customers with that given name
end
