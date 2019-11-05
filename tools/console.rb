require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


james = Customer.new("James", "Earljones")
steve = Customer.new("Steven", "Jobs")
timmy = Customer.new("Timmy", "Rines")

huddlehouse = Restaurant.new("Huddlehouse")
wafflehouse = Restaurant.new("Wafflehouse")
jimmyjohns = Restaurant.new("Jimmy John's")

review1 = Review.new(james, huddlehouse, 3)
review2 = Review.new(james, wafflehouse, 3)
review3 = Review.new(timmy, jimmyjohns, 5)
review4 = Review.new(timmy, wafflehouse, 1)
review5 = Review.new(steve, huddlehouse, 2)
review6 = Review.new(steve, wafflehouse, 5)
review7 = Review.new(james, jimmyjohns, 3)
review8 = Review.new(timmy, jimmyjohns, 5)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line