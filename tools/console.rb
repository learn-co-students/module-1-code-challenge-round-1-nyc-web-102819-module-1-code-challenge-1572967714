require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


# create customer (given_name, family_name)
c1 = Customer.new("first_name1","last_name1")
c2 = Customer.new("first_name2","last_name2")
c3 = Customer.new("first_name3","last_name3")


# create restaurant (name)
r1 = Restaurant.new('restaurant1')
r2 = Restaurant.new('restaurant2')
r3 = Restaurant.new('restaurant3')

# create review (customer, restaurant, rating)
rr1 = Review.new(c1, r1, 1)
rr2 = Review.new(c2, r2, 2)
rr3 = Review.new(c3, r3, 3)
 

# customer full name
fn1 = c1.full_name
fn2 = c2.full_name
fn3 = c3.full_name

#restaruant reviews
rrev_1 = r1.reviews
rrev_2 = r2.reviews
rrev_3 = r3.reviews

#restaruant customers
rc1 = r1.customers
rc2 = r2.customers
rc3 = r3.customers

# customer restarurants
cr1 = c1.restaurants
cr2 = c2.restaurants 
cr3 = c3.restaurants 

# customer add review (restaurant, rating)
add1 = c1.add_review(r2,4)
add2 = c2.add_review(r3,5)

# customer number reviews
num1 = c1.num_reviews
num2 = c2.num_reviews

# customer find by full name
ff1 = Customer.find_by_name("first_name1 last_name1")
ff2 = Customer.find_by_name("first_name2 last_name2")

#customer find all by given name
fgn1 = Customer.find_by_given_name("first_name1")

# average restaurant star rating
avg1 = r1.avg_star_rating
avg2 = r2.avg_star_rating

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

puts "EXIT EXIT EXIT EXIT EXIT EXIT EXIT EXIT EXIT EXIT EXIT EXIT"