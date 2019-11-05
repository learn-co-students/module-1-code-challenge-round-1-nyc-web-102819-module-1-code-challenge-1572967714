class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    Review.all.select do |each|
      each.restaurant == self
    end
  end

  def customers
    self.reviews.map do |each|
      each.customer
    end
  end

  def avg_star_rating
    sum = 0
    self.reviews.map do |each|
      sum += each.rating
    end
    sum/self.reviews.count
  end
  



  
end
