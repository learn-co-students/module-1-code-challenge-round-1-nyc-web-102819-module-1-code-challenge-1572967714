class Customer

  attr_accessor :given_name, :family_name, :restaurant, :rating

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

  #in progress
  #find reviews of restaurant for customer instance
  #only return unique restaurants within array
 def restaurants
   reviewed = Review.all.select do |dined|
      dined.customer == self
    end
    reviewed.select do |dined|
      dined.restaurant
    end.uniq
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  #finds all reviews by customer, finds length of array
  def num_reviews
    number = Review.all.select do |dined|
    dined.customer == self
    end
    number.length
  end

  def self.find_by_name(full_name)
    self.all.find do |name|
    name.full_name == full_name
    end
  end

  def self.find_all_by_given_name(given_name)
    self.all.select do |name|
    name.given_name == given_name
    end
  end

end