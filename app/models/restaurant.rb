class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    Review.all.select {|review_obj| review_obj.restaurant == self}
  end

  def customers
    self.reviews.map {|review_obj| review_obj.customer}.uniq
  end

  def average_star_rating
    my_ratings = self.reviews.map {|review_obj| review_obj.rating}
    my_ratings.sum.to_f / my_ratings.length
  end

end
