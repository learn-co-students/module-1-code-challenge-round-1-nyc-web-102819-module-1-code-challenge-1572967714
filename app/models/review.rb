class Review
    attr_reader :customer, :resturant, :rating
    @@all = []

    def initialize(customer, resturant, rating)
        @customer = customer
        @resturant = resturant
        @rating = rating
    end

    def self.all
    @@all
    end
    
    def customer_rev
        
    end

    def reviews_rat(resturant)
      self.all.select 
    end 
  
end