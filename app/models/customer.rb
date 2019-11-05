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

  def reviews
    Review.all.select do |each|
      each.customer == self
    end
  end

  def restaurants
    self.reviews.map do |each|
      each.restaurant
    end
  end
  
  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  def num_reviews
    self.reviews.count
  end

  def self.find_by_name(name)
    self.all.find do |each|
      each.full_name == name
      end
  end 

  def self.find_by_given_name(name)
    self.all.select do |each|
      each.given_name == name
      end
  end 

end
#