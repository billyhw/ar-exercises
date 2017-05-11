require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...
@store3 = Store.find(3)
@store3.destroy

# see if the database is updated
puts "Number of stores: #{Store.all.count}"
puts Store.find(1).name
puts Store.find(2).name
puts Store.find(3).name