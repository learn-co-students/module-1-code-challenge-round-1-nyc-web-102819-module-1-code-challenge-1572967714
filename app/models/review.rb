class Review
  attr_reader :customer, :restaraunt, :rating

  @@all = []
  def initialize(customer, restaraunt, rating)
    @customer = customer
    @restaraunt = restaraunt
    @rating = rating

    
    @@all << self
  end

  def self.all
    @@all
  end

  def customer
    #gets all the reviews, finds the customer that wrote it
    #if customer is an attribute of a review, how to get customer?
    #... this is why I'm gonna fail this test, and I guess what I need 1 on 1 help with.
    #with this code right now (trying to explain what I failure I am)
    #I'm picking all the reviews (which might not be necessary)
    #from those I'm picking out the ones where the customer matches...
    #this works in the restaurant class but and ONLY for the reviews but...
    #but I'm not sure what I'm doing here... in life and in this code.
    Review.all.find do |r|
    r.customer == self
    end
  end


  def restaurant
    #gets all the reviews, finds the restaraunt that wrote it about
    Review.all.find do |r|
    r.restaurant == self
    end
 end

  #   #- `Review#customer`
#   - returns the customer object for that review
#   - Once a review is created, should not be able to change the customer


# - `Review#restaurant`
#   - returns the restaurant object for that given review
#   - Once a review is created, should not be able to change the restaurant



end