require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Store 
  has_many :employees
end

class Employee 
  belongs_to :Store
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Bob", last_name: "Jones", hourly_rate: 35)
@store1.employees.create(first_name: "Simon", last_name: "Garber", hourly_rate: 125)
@store1.employees.create(first_name: "Jack", last_name: "Johnston", hourly_rate: 50)
@store2.employees.create(first_name: "Spiros", last_name: "Jackson", hourly_rate: 70)
@store2.employees.create(first_name: "Abe", last_name: "Vagoda", hourly_rate: 88)
@store2.employees.create(first_name: "Michael", last_name: "Chan", hourly_rate: 42)
@store2.employees.create(first_name: "Bill", last_name: "Preston", hourly_rate: 69)
@store2.employees.create(first_name: "Theodore", last_name: "Logan", hourly_rate: 69)
@store2.employees.create(first_name: "Charles", last_name: "Roberts", hourly_rate: 50)

