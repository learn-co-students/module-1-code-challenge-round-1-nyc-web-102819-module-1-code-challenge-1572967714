require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#customers
trewin = Customer.new("Larry", "Copplestone")
oliver = Customer.new("Larry", "Copplestone")
jonathan = Customer.new("Jonathan", "Copplestone")
lisa = Customer.new("Lisa", "Pomerantz")

#restaurants
mcdonalds = Restaurant.new("Mcdonalds")
chilis = Restaurant.new("Chilis")
chipoltle = Restaurant.new("Chipoltle")
popeyes = Restaurant.new("Popeyes")

#reviews
rev1 = Review.new(mcdonalds, trewin, 4)
rev2 = Review.new(chilis, oliver, 1)
rev3 = Review.new(chilis, jonathan, 5)
rev4 = Review.new(chipoltle, lisa, 3)
rev5 = Review.new(popeyes, trewin, 2)



# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry


0 #leave this here to ensure binding.pry isn't the last line