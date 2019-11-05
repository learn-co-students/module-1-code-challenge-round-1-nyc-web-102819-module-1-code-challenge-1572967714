require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


johnsmith = Customer.new("John", "Smith")
johncarter = Customer.new("John", "Carter")
johnjoseph = Customer.new("John", "Joseph")
adamcharlie = Customer.new("Adam", "Charlie")
lucasgrigne = Customer.new("Lucas", "Grigne")

johnsjoint = Restaurant.new("johns joint")
bobs_pizza = Restaurant.new("bobs pizza")
hamburger_shack = Restaurant.new("hamburger shack")
pizza_palace = Restaurant.new("pizza palace")
review1 = Review.new(johnsmith, johnsjoint, 5)
review2 = Review.new(adamcharlie, johnsjoint, 3)
review3 = Review.new(johnsmith, johnsjoint, 1)
# review4 = Review.new(johnsmith, bobs_pizza, 3)
review4 = Review.new(johnjoseph, hamburger_shack, 1)
review6 = Review.new(johnjoseph, johnsjoint, 4)
review7 = Review.new(johncarter, pizza_palace, 1)
# review7 = Review.new(johncarter, pizza_palace, 3)









binding.pry
0 #leave this here to ensure binding.pry isn't the last line