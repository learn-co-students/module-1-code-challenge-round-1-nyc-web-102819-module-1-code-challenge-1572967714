require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# customer
Cust1 = customer.new("Amy", "Ssss")
Cust2 = customer.new("Bob", "AAAA")
Cust3 = customer.new("Cherry", "Ddd")

# review
Rev1= review.new(1)

# restaurant


binding.pry
0 #leave this here to ensure binding.pry isn't the last line