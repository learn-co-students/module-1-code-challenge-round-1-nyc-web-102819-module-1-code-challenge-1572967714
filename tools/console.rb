require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

john = Customer.new("John", "Doe")
jane = Customer.new("Jane", "Doe")
rob = Customer.new("Rob", "Smith")
ann = Customer.new("Ann", "White")

pizza = Restaurant.new("Best Pizza")
wings = Restaurant.new("Planet Wings")
italian = Restaurant.new("Italian Night")

review1 = Review.new(john, pizza, 4)
review2 = Review.new(jane, wings, 3)
review3 = Review.new(rob, italian, 5)
review4 = Review.new(ann, italian, 4)
ann.add_review(pizza, 3)
rob.add_review(wings, 2)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line