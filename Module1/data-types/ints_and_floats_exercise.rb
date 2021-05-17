# Ruby Dojo
# Docs:
# https://ruby-doc.org/core-3.0.1/
#

# Perform basic operations with Ruby
# Highlights:
 # - You can perform operations between integers and floats
 # - Keep track of your variables
 
# How to run this file
# 1. Open a terminal and `cd` to where the project is
  # cd path/to/ruby-exercises/Module1/data-types
# 2. Run the file
  # ruby ints_and_floats_exercise.rb

# You can use the method "puts" to output the result to the console
# puts sum
# puts 1 + 2

# Exercise 1:
# Add the necessary code to add the necessary numbers to sum 342
puts "Exercise 1:"
puts 42 + 300 - 300 * (5 / 8 * (1958 * 2))
puts "\n"

# Exercise 2:
# Add the necessary code to substract the necessary numbers to equal -43
puts "Exercise 2:"
puts 0 - 42 - 1
puts "\n"
# Exercise 3:
# Add the necessary code to multiply the the necessary numbers to get 144
puts "Exercise 3:"
puts (50 * 2 * 1.5 - 6).to_i
puts "\n"
# Exercise 4:
# Add the necessary code to divide the the necessary numbers to get 5
puts "Exercise 4:"
puts (400.00 / 74.00).round
puts "\n"

# Exercise 5:
# Calculate the area and perimeter for a square
puts "Exercise 5:"
side_1 = 5.0
side_2 = 5.0
side_3 = 5.0
side_4 = 5.0

area = side_1**2
perimeter = 4 * side_1

puts "Area: #{area}"
puts "Perimeter: #{perimeter}"
puts "\n"

# Exercise 6:
# Calculate the area and perimeter for a rectangle
puts "Exercise 6:"
length = 3.0
width = 4.0


area = length * width
perimeter = 2 * (length * width)

puts "Area: #{area}"
puts "Perimeter: #{perimeter}"
puts "\n"

# Exercise 7:
# Calculate the area and perimeter for a triangle
puts "Exercise 7:"
base = 5.0
height = 7.0
side_1 = 3.0
side_2 = 6.0

area = (base * height) / 2
perimeter = side_1 + base + side_2

puts "Area: #{area}"
puts "Perimeter: #{perimeter}"
puts "\n"
# Exercise 8:
# Calculate the area and perimeter for a circle
puts "Exercise 8:"
diameter = 6.0
radius = 3.0
pi = 3.1416 

area = pi * (radius**2)
perimeter = 2 * (pi * radius)

puts "Area: #{area}"
puts "Perimeter: #{perimeter}"
puts "\n"
# Exercise 9:
# Get the average age from your family
puts "Exercise 9:"
mother = 45.0
father = 53.0
sister = 23.0
me = 27.0

age_average = (mother + father + sister + me) / 4
puts "Age average #{age_average}"
puts "\n" 

# Exercise 10:
# Calculate the proportion for each fruit found on a bowl:
# 3 bananas, 2 apples, 1 watermelon, 5 kiwis, 10 strawberries
puts "Exercise 10:"

def calculate_proportion(fruit_quantity, all_fruits)
  portion = (fruit_quantity * 100) / all_fruits
  return portion
end

fruits = [{name: "banana", quantity: 3.0}, {name: "apples", quantity: 2.0}, {name: "watermelon", quantity: 1.0}, {name: "kiwis", quantity: 5.0}, {name: "strawberries", quantity: 10.0} ]

all_fruits = fruits[0][:quantity] + fruits[1][:quantity] + fruits[2][:quantity] + fruits[3][:quantity] + fruits[4][:quantity]

fruits.each do |fruit|
  puts "#{fruit[:name]} #{calculate_proportion(fruit[:quantity], all_fruits).to_s} %"
end
