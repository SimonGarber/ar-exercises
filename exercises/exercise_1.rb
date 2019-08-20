require_relative '../setup'

puts "Exercise 1"
puts "----------"

t = Store.new
t.name = "Burnaby"
t.annual_revenue = 3000000
t.womens_apparel = true
t.mens_apparel = true
t.save

t = Store.new
t.name = "Richmond"
t.annual_revenue = 1260000
t.womens_apparel = true
t.mens_apparel = false
t.save

t = Store.new
t.name = "Gastown"
t.annual_revenue = 190000
t.womens_apparel = false
t.mens_apparel = true
t.save

puts Store.count
