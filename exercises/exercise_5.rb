require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

@total_revenue = Store.all.sum(:annual_revenue)

p @total_revenue

@avg_revenue = (@total_revenue/Store.all.count)

p @avg_revenue

@over_million = Store.where('annual_revenue > ?', 1000000).count

p @over_million