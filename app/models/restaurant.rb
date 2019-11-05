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
    Review.all.select {|rev| rev.restaurant == self}
  end

  def customers
    reviews.map {|rev| rev.customer}.uniq
  end

  #need all reviews per instance
  #inject 

  def average_star_rating
    total_ratings = customers.all.reduce(0) {|acc, rev| acc + rev.rating}
    total_ratings / customers.length
  end

end
