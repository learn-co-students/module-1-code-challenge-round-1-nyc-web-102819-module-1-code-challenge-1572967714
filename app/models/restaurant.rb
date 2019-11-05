class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def restaurant(name)
    @name
  end

  def reviews
    review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    review.all.select do |customers|
      review.customers == self
    end
  end





  
end
