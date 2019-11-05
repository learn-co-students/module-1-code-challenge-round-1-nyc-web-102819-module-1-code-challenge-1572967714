require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# first_name, last_name
c1 = Customer.new("Barak","Saidoff")
c2 = Customer.new("Jesse","Alexander")
c3 = Customer.new("Ben","Thall")
c4 = Customer.new("Barak","Obama") # created another customer instance with same given name as someone else to see if Customer.find_all_by_given_name works

r1 = Restaurant.new("Sushi")
r2 = Restaurant.new("Pizza")
r3 = Restaurant.new("Bakery")

# customer,restaurant,rating
rev1=Review.new(c1,r1,5)
rev2=Review.new(c2,r2,4)
rev3=Review.new(c3,r3,3)
rev4 = Review.new(c1,r3,4.5)
rev5=Review.new(c1,r3,2.5) # To test uniq on #customers method √

# !! I initially had reviews at a number between 1-100 and my method for calculating average worked, now im unsure...reworking logic loc



# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line