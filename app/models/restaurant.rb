class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews                        #this rest's reviews
    Review.all.select do |rev|
      rev.restaurant == self
    end
  end

  def customers
    reviews.map do |rev|
      rev.customer
    end
  end

#################

  def average_star_rating
    reviews.map do |rev|
      rev.rating
    end.reduce(:+).to_f/reviews.count
  end

end