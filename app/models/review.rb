class Review
    attr_reader
    attr_accessor :customer, :restaurant, :rating

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

    def rating
         
    end

    

  
end