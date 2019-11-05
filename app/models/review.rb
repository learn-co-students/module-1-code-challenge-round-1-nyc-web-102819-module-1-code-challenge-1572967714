class Review
  
    attr_accessor :rating
    attr_reader :customer, :restaurant

    @@all = []

    def initialize(customer, restaurant, rating)
    @customer = customer
    @restaurant = restaurant
    @rating = rating
    @@all << self
    end

    def self.all
        @@all
    end

#in progress
#finds review
#get customer object from review
def customer
   review_match = Review.all.select do |review|
        review == self
    end
    review_match.select do |match|
        Customer
    end
end

#in progress
#finds review
#get restaraunt object from review
def restaurant
    Review.all.select do |review|
        review == self
    end

end


end