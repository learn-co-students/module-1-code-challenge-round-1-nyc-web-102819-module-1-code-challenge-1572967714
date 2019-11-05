class Customer
  attr_accessor :first_name, :last_name
  @@all=[]

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name

    @@all << self
  end

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
  def self.all
    @@all
  end

  def reviews
    # This method returns all review instances with the name of the customer its called on √
    Review.all.select do |review|
      review.customer.first_name == self.first_name
    end
  end

  def restaurant
    # Returns a unique array of all restaurants a customer has reviewed √
    arr = self.reviews.map do |review|
      review.restaurant
    end
    arr.uniq
  end

  def add_review(restaurant, rating)
    # customer,restaurant,rating √
    Review.new(self,restaurant,rating)
  end

  def num_reviews
    # Returns the total number of reviews that a customer has authored √
    self.reviews.count
  end

  def self.find_by_name(name)
    # given a string of a full name, returns the first customer whose full name matches √
    Customer.all.find do |customer|
      customer.full_name == name
    end
  end

  def self.find_all_by_given_name(name)
    # given a string of a first name, returns an array containing all customers with that first name √
    self.all.select do |customer|
      customer.first_name == name
    end
  end


end
