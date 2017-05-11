require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# turn strings "true" and "false" from gets.chomp to boolean
def to_bool(str)
  case str
  when "true"
    result = true
  when "false"
    result = false
  else
    result = str
  end
  result
end

# Your code goes here ...
puts "Enter store name:"
store_name = gets.chomp

puts "Enter annual revenue"
annual_rev = gets.chomp

puts "Mens Apparel? (true or false)"
mens_app = to_bool gets.chomp

puts "Womens Apparel? (true or false)"
womens_app = to_bool gets.chomp

new_store = Store.new(name: store_name,
  annual_revenue: annual_rev,
  mens_apparel: mens_app,
  womens_apparel: womens_app)

new_store.save
puts new_store.errors.details[:name]
puts new_store.errors.details[:annual_revenue]
puts new_store.errors.details[:mens_apparel]
puts new_store.errors.details[:womens_apparel]

# puts new_store.errors.details[:name]
