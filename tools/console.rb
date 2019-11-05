require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
jay = Customer.new("Jay","Sherman")
homer = Customer.new("Homer","Simpson")
fifty = Customer.new("Fifty","Cent")
me = Customer.new("Gabe","Gutierrez")

hooters = Restaurant.new("Hooters")
people = Restaurant.new("Soylent")
flavortown = Restaurant.new("Flavortown")
food = Restaurant.new("food")

# def initialize(customer, restaraunt, rating)
r1 = Review.new(jay,hooters,1)
r2 = Review.new(jay,people,1)
r3 = Review.new(jay,flavortown,1)
r4 = Review.new(me,hooters,10)
r5 = Review.new(homer,food,5)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line