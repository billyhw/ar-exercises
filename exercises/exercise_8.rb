require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
#require_relative './exercise_7'

puts "Exercise 8"
puts "----------"

Employee.all.each do |person|
  print person.id.to_s + " "
  print person.first_name + " "
  puts person.last_name
  puts "password: " + person.password
  puts
end