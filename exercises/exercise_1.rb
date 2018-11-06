require_relative '../setup'
require_relative './exercise_7'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...

class Store < ActiveRecord::Base
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: {only_integer: true, greater_than: 0}
  validates_with MyValidator
  has_many :employees
end

Store.create!(
  name: 'Burnaby',
  annual_revenue: 300000,
  mens_apparel: true,
  womens_apparel: true
  )

Store.create!(
  name: "Richmond",
  annual_revenue: 1260000,
  mens_apparel: false,
  womens_apparel: true
  )

Store.create!(
  name: "Gastown",
  annual_revenue: 190000,
  mens_apparel: true,
  womens_apparel: false
  )


puts "#{Store.all.count} stores in data base"