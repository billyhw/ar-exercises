require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...

@store1 = Store.find(1)
@store2 = Store.find(2)
@store1.name = "Toronto"
@store1.annual_revenue = 3500000
@store1.save

puts "---- Check out @store1 ----"
puts @store1.name
puts @store1.annual_revenue

puts "---- Check whether first entry in database is updated ----"
puts Store.find(1).name
puts Store.find(1).annual_revenue