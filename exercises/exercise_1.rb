require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...

# You can work with the models with irb by running:
# irb -r './setup.rb'

Store.create(
  name: "Burnaby",
  annual_revenue: 300000,
  mens_apparel: true,
  womens_apparel: true)

Store.create(
  name: "Richmond",
  annual_revenue: 1260000,
  mens_apparel: false,
  womens_apparel: true)

# Store.create(
#   name: "Gastown",
#   annual_revenue: 190000,
#   mens_apparel: true,
#   womens_apparel: false)

# alternatively for the third entry

store = Store.new
store.name = "Gastown"
store.annual_revenue = 190000
store.mens_apparel = true
store.womens_apparel = false
store.save

puts "Total number of stores in the database: #{Store.all.count}"