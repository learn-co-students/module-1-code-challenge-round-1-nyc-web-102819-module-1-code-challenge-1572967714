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

  def reviews
    Review.all.select do |review|
      review.customer == self
    end
  end

  def num_reviews
    reviews.length
  end

  def restaurants
    reviews.collect do |review|
      review.restaurant
    end.uniq
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  def self.all
    @@all
  end

  def self.find_by_name(full_name)
    all.find do |customer|
      customer.full_name == full_name
    end
  end

  def self.find_by_given_name(given_name)
    all.select do |customer|
      customer.given_name == given_name
    end
  end
end
