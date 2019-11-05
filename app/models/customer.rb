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
    Review.all.select do |review|
      review.customer == self
    end
  end

  def restaurants
    restaurant_list = self.reviews.map do |review|
      review.restaurant
    end
    restaurant_list.uniq
  end

  def add_review(restaurant, rating)
    Review.new(restaurant, self, rating)
  end

  def num_reviews
    list = self.reviews
    list.length
  end

  def self.find_by_name(name)
    Customer.all.find do |customer|
      customer.full_name == name
    end
  end

  def self.find_all_by_given_name(name)
    Customer.all.select do |customer|
      customer.given_name == name
    end
  end


end
