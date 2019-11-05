class Review

    attr_reader :customer, :restaurant, :rating

    @@all = []

    def initialize(restaurant, customer, rating)
        @restaurant = restaurant
        @customer = customer
        @rating = rating

        @@all << self
    end

    def self.all
        @@all
    end



  
end