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
    # Returns a unique array of all restaurants a customer has reviewed
    all_customer_reviews = Review.all.select {|review| review.customer == self}
    reviewed_restaurants = all_customer_reviews.map {|review| review.restaurant}
    reviewed_restaurants.uniq
  end

  def add_review(restaurant, rating)
    # create new review using self, restaurant, rating
    Review.new(self, restaurant, rating)
  end

  def num_reviews
    # return total number of reviews for specific customer
    all_customer_reviews = Review.all.select {|review| review.customer == self}
    all_customer_reviews.count
  end  

  def self.find_by_name(name)
    # given a string of a full name, returns the first customer whose full name matches
    self.all.find {|n| n.full_name == name}
  end

  def self.find_all_by_given_name(name)
    # given a string of a given(first) name, returns an array containing all customers with that given name
    self.all.select {|n| n.given_name == name}
  end

end
