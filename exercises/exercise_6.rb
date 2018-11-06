require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :store_id, presence: true
  validates_inclusion_of :hourly_rate, :in => 40..200
end


@store1.employees.create(first_name: "Bob", last_name: "Smith", hourly_rate: 10)
@store1.employees.create(first_name: "John", last_name: "johnson", hourly_rate: 50)
@store1.employees.create(first_name: "Carl", last_name: "Carlson", hourly_rate: 40)

@store2.employees.create(first_name: "Dan", last_name: "Danielson", hourly_rate: 60)
@store2.employees.create(first_name: "Kevin", last_name: "Kevininson", hourly_rate: 50)
@store2.employees.create(first_name: "Mark", last_name: "Markson", hourly_rate: 40)



p Employee.all