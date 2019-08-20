require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
t = Store.new
t.name = "Surrey"
t.annual_revenue = 224000
t.womens_apparel = true
t.mens_apparel = false
t.save

t = Store.new
t.name = "Whistler"
t.annual_revenue = 1900000
t.womens_apparel = false
t.mens_apparel = true
t.save

t = Store.new
t.name = "Yaletown"
t.annual_revenue = 430000
t.womens_apparel = true
t.mens_apparel = true
t.save

puts Store.count

@mens_stores = Store.where(mens_apparel:true)
 @mens_stores.each do |row| 
  p [row.name , row.annual_revenue]
end

@womens_stores = Store.having('(annual_revenue)< 1000000').group('id','womens_apparel')
 @womens_stores.each do |row|
  p [row.name, row.annual_revenue]
 end

