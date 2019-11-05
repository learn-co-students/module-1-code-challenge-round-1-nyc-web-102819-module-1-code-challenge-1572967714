class Restaurant
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    # this method returns all reviews for that specific restaurant we call this method on
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    # Returns a unique list of all customers who have reviewed a particular restaurant.
      arr = self.reviews.map do |review|
        review.customer
    end
    arr.uniq
  end

  def average_star_rating
    # returns the average star rating for a restaurant based on its reviews
    average = self.reviews.map do |review|
      review.rating
    end
    average.inject(0){|sum,n|sum+n}/average.length
  end
end
