class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    # returns an array of all reviews for that restaurant
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    # returns a unique list of all customers who have reviewed a particular restaurant
    # calls upon #reviews
    reviews.map.uniq {|review| review.customer}
  end

  def average_star_rating
    # returns the average star rating(in float) for a restaurant based on its reviews
    # Reminder: you can calculate the average by adding up all the ratings and dividing by the number of ratings
    all_ratings = reviews.map {|review| review.rating}
    total_points = all_ratings.inject(0){|sum, n| sum + n}
    avg = total_points.to_f / all_ratings.count
  end


end
