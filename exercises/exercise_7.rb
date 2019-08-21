require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"
class Validator < ActiveModel::Validator
  def validate(record)
    if record.hourly_rate < 40 || record.hourly_rate > 200 
     puts record.errors[:base] << "This hourly rate does not conform with standards"

    end
  end 
end

class Employee 
  validates :first_name, presence: true
  validates :last_name, presence: true
  !validates_with Validator
end

@store1.employees.create(first_name: "bill", last_name: "Jones", hourly_rate: 201)
@store1.employees.create(first_name: "zack", last_name: "Jones", hourly_rate: 100)
