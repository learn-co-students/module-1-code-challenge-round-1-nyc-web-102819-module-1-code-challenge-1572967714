class Customer
  attr_accessor :given_name, :family_name
  attr_reader :full_name
  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self
  end

  def full_name
    @full_name = "#{given_name} #{family_name}"
  end

  def self.all
    @@all
  end

  def cust_reviews                        #helper method
    Review.all.select do |rev|
      rev.customer == self
    end
  end

  def restaurants
    cust_reviews.map do |rev|
      rev.restaurant
    end
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

##############

  def num_reviews
    cust_reviews.count
  end

  def self.find_by_name(name)
    @@all.find do |cust|
      cust.full_name == name
    end
  end

  def self.find_all_by_given_name(name)
    @@all.select do |cust|
      cust.given_name == name
    end
  end

end
