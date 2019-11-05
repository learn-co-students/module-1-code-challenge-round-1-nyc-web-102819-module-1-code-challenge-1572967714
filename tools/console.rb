require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

billy = Customer.new("Billy", "Neutral")
bimmy = Customer.new("Bimmy", "Neutran")
jimmy = Customer.new("Jimmy", "Neutron")
carl = Customer.new("Carl", "Wheezer")
bimmy2 = Customer.new("Bimmy", "Jimmy")

abumi = Restaurant.new("Abumi")
sakura = Restaurant.new("Sakura")
mcdonalds = Restaurant.new("McDonalds")
noodles = Restaurant.new("Noodles")

#(customer, restaurant, rating)
r1 = Review.new(billy, abumi, 2)
r2 = Review.new(bimmy, abumi, 4)
r3 = Review.new(carl, mcdonalds, 5)
r4 = Review.new(jimmy, sakura, 3)
r5 = Review.new(bimmy, noodles, 5)
r6 = Review.new(bimmy, noodles, 1)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line