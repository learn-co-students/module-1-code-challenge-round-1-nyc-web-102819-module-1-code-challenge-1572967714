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
    Review.all.select do |reviews|
      reviews.restaurant == self
    end
  end

  def customers
    reviews.select do |review|
      review.customer
    end.uniq
  end

  #finds reviews for specific restaurant
  #totals ratings
  #total divided by length of resturant instance array
  def average_star_rating
  ratings = reviews.map do |rate|
    rate.rating
    end
  total = ratings.inject do |n, sum|
    sum + n
    end
  total / ratings.length
  end

end
