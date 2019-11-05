class Customer
  attr_reader :given_name, :family_name
  
  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @full_name = "#{@given_name} #{@family_name}"
    @@all << self
  end

  def self.all
    @@all
  end

  def given_name
    @given_name
  end

  def family_name
    @family_name
  end

  def full_name
    "#{@given_name} #{@family_name}"
  end

  def review_per_ci
    Review.all.select {|rev| rev.customer == self}
  end

  def restaurants
    review_per_ci.map {|rev| rev.restaurant}.uniq
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  #Returns the total number of reviews that a customer has authored

  def num_reviews
    review_per_ci.all.select {|rev| rev.customer}.count
  end

  def self.find_by_name(name)
    self.all.find {|cust| cust.full_name == name}
  end

  def self.find_all_by_given_name(name)
    self.all.find_all {|cust| cust.given_name == name}
  end

end
