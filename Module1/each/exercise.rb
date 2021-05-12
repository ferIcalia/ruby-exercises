# Ruby Dojo
# Docs:
# https://ruby-doc.org/core-3.0.1/
#

# Introduction to each
# Highlights:
 # - #each works for hash and arrays
 # - Is it called an iterator and repeats as many elements as it contains
  
# How to run this file
# 1. Open a terminal and `cd` to where the project is
  # cd path/to/ruby-exercises/Module1/each
# 2. Run the file
  # ruby exercise.rb

# You can use the method "puts" to output the result to the console
# puts a_variable
# puts "Alice"

# Exercise 1:
# Given an array of anime characters:
# 1. Print each name capitalized
# 2. Print each name reversed
# 3. Print each name uppercased

puts "Exercise 1:"
characters = ["goku", "deku", "eren", "vegeta", "saitama", "mikasa", "katara"]

characters.each do |character|
  puts character.capitalize
end

puts "\n"

characters.each do |character|
  puts character.reverse
end

puts "\n"

characters.each do |character|
  puts character.upcase
end

puts "\n"
# Exercise 2:
# Given an array of anime characters:
# 1. Create a new array with the names with less or equal than 4 letters
# 2. Create a new array with only the lenghts of the names
puts "Exercise 2:"
characters = ["goku", "deku", "eren", "vegeta", "saitama", "mikasa", "katara"]

new_characters = Array.new
names_length = Array.new

characters.each do |character| 
  new_characters << character if character.size <= 4 
  names_length << character.size
end
puts new_characters.inspect
puts names_length.inspect

puts "\n"
# Exercise 3:
# Given an array of numbers:
# 1. Substract the numbers from the array and get the total
# 2. Print only the numbers divisible by 3
# 3. Print the square number for each number

puts "Exercise 3:"
disivible_by_three = Array.new
sqare_of_each_number = Array.new

numbers = [67, 78, 68, 24, 15, 41, 58, 81, 33, 13]

total = 0
numbers.each do |number|
  total -= number
  disivible_by_three << number if number % 3 == 0
  sqare_of_each_number << number ** 2
end

puts "Total"
puts total
puts "Visisible by three"
puts disivible_by_three.inspect
puts "Sqare of each number"
puts sqare_of_each_number.inspect

puts "\n"
# Exercise 4:
# Given an array of numbers:
# 1. Create a new array with only even numbers
# 2. Create a new array with only odd numbers
# 3. Create a new array with only prime numbers
puts "Exercise 4:"
even_numbers = Array.new
odd_numbers = Array.new
prime_numbers = Array.new

numbers = [30, 8, 31, 40, 33, 69, 84, 9, 61, 97]

numbers.each do |number|
  even_numbers << number if number % 2 == 0
  odd_numbers << number if number % 2 != 0

  counter = 0
  for i in 1..number do
    if number % i == 0
      counter += 1
    end
end
if counter == 2
    prime_numbers << number
end
end

puts "Even numbers"
puts even_numbers.inspect
puts "Odd numbers"
puts odd_numbers.inspect
puts "Prime numbers"
puts prime_numbers.inspect


puts "\n"
# Exercise 5:
# Given the following array:
# [["Goku", "37"] ["Deku", "16"], ["Eren", "19"], ["Vegeta", "48"], ["Saitama", "25"], ["Mikasa", "19"], ["Katara", "16"]]
# 1. Create an array of hashes with two keys, name and age. For example [{name: "Goku", age: 37}]
# 2. Store the age in the hash as an integer
# 4. Add an abilities element(array) to the original array, and add it to the hash. For example [["Goku", 37, ["Kaioken", "Kamekameha"]]]
# 6. Print the character profile matching the following format:
#  Goku is a 37 years old with and is able to Kaioken, Kamekameha
puts "Exercise 5:"
response = Array.new


characters = [["Goku", "37", ["Kaioken", "Kamekameha"]], ["Deku", "16", ["Invisible", "Thunder wave"]], ["Eren", "19", ["Electrical powers", "Running fast"]], ["Vegeta", "48", ["Big bang attack", "Ozaru"]], ["Saitama", "25", ["Super strength", "Super everything"]], ["Mikasa", "19", ["Read minds", "Breath underwater"]], ["Katara", "16", ["Fire control", "Water control"]]]

characters.each do |character|
  response << {name: character[0], age: character[1].to_i}

  message_response = "#{character[0]} is a #{character[1]} years old with and is able to "
  character[2].each do |superpower|    
    message_response += superpower + ", "
  end
  puts message_response
end

puts response



puts "\n"