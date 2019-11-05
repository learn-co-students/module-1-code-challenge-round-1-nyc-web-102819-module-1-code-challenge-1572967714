require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


triona = Customer.new("Triona", "Moynihan")
bob1 = Customer.new("Bob", "Golden")
alanna = Customer.new("Alanna", "Moynihan")
betty = Customer.new("Betty", "Golden")
bob2 = Customer.new("Bob", "Silver")





joes = Restaurant.new("Joes Pub")
mcdonalds = Restaurant.new("McDonalds")


rev1 = Review.new(triona, joes, 5)
rev2 = Review.new(bob1, mcdonalds, 3)
rev3 = Review.new(triona, mcdonalds, 1)
rev4 = Review.new(bob1, joes, 4)
rev5 = Review.new(bob1, joes, 3)
rev6 = Review.new(betty, joes, 5)





binding.pry
0 #leave this here to ensure binding.pry isn't the last line