class Restaurant
  attr_reader :name
  attr_accessor :rating, :customer
  @@all = []
  
  def initialize(name)
    @name = name
    @rating = rating

    @@all << self
  end
  
  def self.all
    @@all
  end

  def reviews
    Review.all.map { |restaurant|restaurant.rating }
  end

  def customers
      Review.all.select {|restaurant|restaurant.customers == self}
  end

  def average_star_rating
    
  end


end
