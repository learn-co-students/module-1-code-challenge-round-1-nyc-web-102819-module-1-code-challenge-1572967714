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
    Review.all.select { |r| r.customer == self }
  end 

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end 

  def restaurants
    reviews.map { |r| r.restaurant }.uniq
  end 

  def num_reviews
    reviews.length 
  end 

  def self.all
    @@all
  end 

  def self.find_by_name(full_name)
    self.all.find { |c| c.full_name == full_name }
  end 

  def self.find_all_by_given_name(given_name)
    self.all.select { |c| c.given_name == given_name }
  end 

end
