require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
@total_revenue = Store.all.sum("annual_revenue")

puts "Total Annual Revenue: #{@total_revenue}"

@total_stores = Store.all.count

# just in case the average is has decimals, turn the numerator and denominator to float
puts "Average Revenue: #{@total_revenue.to_f/@total_stores.to_f}"

@num_stores_over1M = Store.where("annual_revenue > 1000000").count

puts "Number of stores with over $1M sales: #{@num_stores_over1M}"

# sanity check
@stores_over1M = Store.where("annual_revenue > 1000000")
@stores_over1M.each do |store|
  print "Name: #{store.name}, "
  puts "Annual Revenue: #{store.annual_revenue}"
end