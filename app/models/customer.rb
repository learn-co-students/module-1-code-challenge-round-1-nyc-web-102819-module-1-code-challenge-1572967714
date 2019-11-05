require 'pry'

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

  def my_reviews
    Review.all.select {|review_obj| review_obj.customer == self}
  end

  def restaurants
    self.my_reviews.map {|review_obj| review_obj.restaurant}.uniq
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  def num_reviews
    self.my_reviews.length
  end

  def self.find_by_name(name)
    target_review = Review.all.find {|review_obj| review_obj.customer.full_name == name}
    target_review.customer
  end

  def self.find_all_by_given_name(name)
    target_reviews = Review.all.find_all {|review_obj| review_obj.customer.given_name == name}
    target_reviews.map {|review_obj| review_obj.customer}
    # THE WORDING OF THE CHALLENGE DOESNT CLARIFY IF IT SHOULD BE A UNIQUE ARRAY OR NOT. IF THATS NECESSARY I WOULD JUST .uniq TO THE ARRAY PRODUCED BY LINE 35
  end

end
