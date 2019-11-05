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
    customer_list = self.reviews.map do |review|
      review.customer
    end
    customer_list.uniq
  end

  def average_star_rating
    rating_array = self.reviews.map do |review|
      review.rating
    end
    total = rating_array.reduce(:+)
    average = total/rating_array.length
    average
  end

end
