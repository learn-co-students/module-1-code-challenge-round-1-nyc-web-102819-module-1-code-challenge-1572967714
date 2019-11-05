class Restaurant

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    Review.all.select { |r| r.restaurant == self }
  end 

  def customers
    reviews.map { |r| r.customer }.uniq
  end 

  def ratings
    reviews.map { |r| r.rating }
  end 

  def average_star_rating
    ratings.sum.to_f / ratings.length.to_f
  end 

end
