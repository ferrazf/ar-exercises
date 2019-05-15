require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
@revenueSum = Store.sum("annual_revenue")
@avgRevenue = @revenueSum / Store.count

puts "Combined Anual Revenue = " + @revenueSum.to_s , "AverageAnual Revenue = " + @avgRevenue.to_s

@richStoresCount = Store.where("annual_revenue > 1000000").count;

puts "Number of Rich Stores: " + @richStoresCount.to_s;