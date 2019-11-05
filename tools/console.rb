require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#Customer :given_name, :family_name

customer1 = Customer.new("Hector", "Polanco")
customer2 = Customer.new("Tom", "Silva")
customer3 = Customer.new("Rebecca", "Samuels")
customer4 = Customer.new("Uche", "Iteogu")
customer5 = Customer.new("Sam", "Altman")

#Restaurant attr_reader :name

restaurant1 = Restaurant.new("Taco Tuesday")
restaurant2 = Restaurant.new("Arbys")
restaurant3 = Restaurant.new("Red Robin")
restaurant4 = Restaurant.new("Fridays")
restaurant5 = Restaurant.new("Applebees")

#Review attr_reader :customer, :restaurant, :rating

review1 = Review.new(customer1, restaurant1, 10)
review2 = Review.new(customer1, restaurant1, 7)
review3 = Review.new(customer2, restaurant3, 10)
review4 = Review.new(customer3, restaurant4, 3)
review5 = Review.new(customer4, restaurant3, 5)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line