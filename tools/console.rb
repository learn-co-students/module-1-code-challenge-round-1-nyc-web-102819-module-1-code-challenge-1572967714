require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

jonah = Customer.new("Jonah", "Offitzer")
lane = Customer.new("Lane", "Darwin")
evan = Customer.new("Evan", "Shlissel")
jordan = Customer.new("Jordan", "Bayroff")
steve = Customer.new("Steve", "Forgash")
hill = Customer.new("Jonah", "Hill")
hill = Customer.new("Jonah", "Hill")

mcdonalds = Restaurant.new("McDonald's")
wendys = Restaurant.new("Wendy's")
burger_king = Restaurant.new("Burger King")

r1 = Review.new(jonah, mcdonalds, 10)
r2 = Review.new(jonah, wendys, 9)
r3 = Review.new(lane, wendys, 8)
r4 = Review.new(jordan, burger_king, 4)
r5 = Review.new(evan, burger_king, 6)
r6 = Review.new(jordan, mcdonalds, 7)
r7 = Review.new(lane, wendys, 2)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line