require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

luke = Customer.new("Luke", "Waring")
alice = Customer.new("Alice", "Jones")
luke_2 = Customer.new("Luke", "Apple")

shake_shack = Restaurant.new("Shake Shack")
burger_king = Restaurant.new("Burger King")
subway = Restaurant.new("Subway")

great_review = Review.new(luke, shake_shack, 5)
good_review = Review.new(alice, burger_king, 3)
bad_review = Review.new(luke, subway, 1)
meh_review = Review.new(alice, shake_shack, 2)
pretty_good_review = Review.new(luke, shake_shack, 4)

binding.pry
#leave this here to ensure binding.pry isn't the last line
