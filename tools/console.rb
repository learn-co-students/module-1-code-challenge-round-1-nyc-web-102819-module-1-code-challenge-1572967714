require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#create 3 customers
john = Customer.new("John", "Smith")
mary = Customer.new("Mary", "Jones")
henry = Customer.new("Henry", "Davis")

#create 3 restaurants
shake = Restaurant.new("Shake Shack")
bare = Restaurant.new("Bareburger")
five_guys = Restaurant.new("Five Guys")

#create 5 reviews
r1 = Review.new(john, bare, 5)
r2 = Review.new(mary, shake, 4)
r3 = Review.new(henry, five_guys, 3)
r4 = Review.new(mary, bare, 5)
r5 = Review.new(john, bare, 4)

#add new review using Customer class
henry.add_review(bare, 1)
#repeat reviews from the same customer
henry.add_review(five_guys, 1)
henry.add_review(five_guys, 2)

#duplicate first name
john2 = john = Customer.new("John", "Stan")

#averagting rating for all restaurants
shake_avg = shake.average_star_rating
bare_avg = bare.average_star_rating
fg_avg = five_guys.average_star_rating

binding.pry
0 #leave this here to ensure binding.pry isn't the last line