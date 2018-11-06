require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...
p @store1
@store3 = Store.find_by(id: 3)

p @store3
@store3.destroy

puts "#{Store.all.count} stores in data base"
