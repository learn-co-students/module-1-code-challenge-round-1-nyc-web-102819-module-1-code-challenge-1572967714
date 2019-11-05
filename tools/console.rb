require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

c1 = Customer.new("Henry", "Ford")
c2 = Customer.new("Ben", "Franklin")
c3 = Customer.new("Tommy", "Edison")
c4 = Customer.new("Tommy", "Bahama")

r1 = Restaurant.new("Chilis")
r2 = Restaurant.new("Applebees")
r3 = Restaurant.new("Shenanigans")

rev1 = Review.new(c1, r1, 5)
rev2 = Review.new(c1, r2, 3)
rev3 = Review.new(c1, r3, 1)
rev4 = Review.new(c2, r1, 2)
rev5 = Review.new(c3, r2, 4)

binding.pry
"endofpry"