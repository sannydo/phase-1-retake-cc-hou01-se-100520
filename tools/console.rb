require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#Customer.new(given_name, family_name)
cust1 = Customer.new("Sanny", "Do")
cust2 = Customer.new("Chris", "Lopez")
cust3 = Customer.new("Alex", "Nguyen")

#Restaurant.new(name)
rest1 = Restaurant.new("Gringos")
rest2 = Restaurant.new("La Madeline")
rest3 = Restaurant.new("MOD Pizza")

#Review.new(customer, restaurant, rating)
review1 = Review.new(cust1, rest1, 6)
review2 = Review.new(cust2, rest2, 3)
review3 = Review.new(cust3, rest3, 8)
#r4 = Review.new(c1, r1, 9)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line