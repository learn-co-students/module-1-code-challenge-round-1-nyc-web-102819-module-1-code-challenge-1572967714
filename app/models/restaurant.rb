class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    reviews.map do |review|
      review.customer
    end.uniq
  end

  def average_star_rating
    total = reviews.reduce(0.0) do |sum, i|
      sum + i.rating
    end
    total / reviews.length
  end

end
