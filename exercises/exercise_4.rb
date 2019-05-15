require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

Store.create name:"Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true
Store.create name:"Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false
Store.create name:"Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: false

Store.where(mens_apparel: true).find_each do |store,annual_revenue|
    puts "Name = " + store.name, "Annual Revenue: " + store.annual_revenue.to_s
end



