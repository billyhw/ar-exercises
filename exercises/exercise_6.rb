require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# The store Ids
Store.all.each do |x|
  puts x.id
end

# Your code goes here ...
# store 3 was deleted earlier
@store1 = Store.find(1)
@store2 = Store.find(2)
@store4 = Store.find(4)
@store5 = Store.find(5)
@store6 = Store.find(6)

# create 2 employees for each store
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Candy", last_name: "Dasani", hourly_rate: 70)
@store2.employees.create(first_name: "Bob", last_name: "Monte", hourly_rate: 50)
@store2.employees.create(first_name: "Jack", last_name: "Carlo", hourly_rate: 80)
@store4.employees.create(first_name: "Kyle", last_name: "Goodrich", hourly_rate: 70)
@store4.employees.create(first_name: "Chris", last_name: "Mandy", hourly_rate: 50)
@store5.employees.create(first_name: "Dan", last_name: "Janet", hourly_rate: 40)
@store5.employees.create(first_name: "Richard", last_name: "Veloso", hourly_rate: 30)
@store6.employees.create(first_name: "Patrick", last_name: "Jidha", hourly_rate: 70)
@store6.employees.create(first_name: "Jimmy", last_name: "Nam", hourly_rate: 90)

# print the employees and their info, including store_id
Employee.all.each do |x|
  puts x.first_name
  puts x.last_name
  puts x.hourly_rate
  puts x.store_id
end