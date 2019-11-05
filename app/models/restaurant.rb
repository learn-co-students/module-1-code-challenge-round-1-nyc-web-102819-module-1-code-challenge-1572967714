class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    Review.all.select {|reviews| reviews.restaurant == self}
  end

  def customers
    customer_revs = reviews.map {|reviews| reviews.customer}
    customer_revs.uniq
  end

  def average_star_rating
    ratings = reviews.map {|reviews| reviews.rating}
    ratings.sum.to_f / ratings.count
  end

end

