class Restaurant
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    reviews.collect do |review|
      review.customer
    end.uniq
  end

  def ratings
    reviews.collect do |review|
      review.rating
    end
  end

  def average_star_rating
    total_points = ratings.reduce(0) do |sum, rating|
      sum + rating
    end
    total_points.to_f / ratings.length
  end

  def self.all
    @@all
  end
end
