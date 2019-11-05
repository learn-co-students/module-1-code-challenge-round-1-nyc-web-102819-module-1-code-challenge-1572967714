class Review
    attr_reader :customer

    def initialize(customer, restuarant, rating_number)
        @customer = customer
        @restuarant = restuarant
        @rating_number = rating_number

        @@all << self
     
    end

    def self.all 
        return @@all  
    end
    def customer
        
    end
end