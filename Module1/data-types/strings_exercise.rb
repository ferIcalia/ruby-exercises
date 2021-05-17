# Ruby Dojo
# Docs:
# https://ruby-doc.org/core-3.0.1/
#

# Working with Strings in Ruby
# Highlights:
 # - You can join multiple strings using interpolation or concatenation
 # - You use other basic operator other than "+" with strings
  
# How to run this file
# 1. Open a terminal and `cd` to where the project is
  # cd path/to/ruby-exercises/Module1/data-types
# 2. Run the file
  # ruby strings_exercise.rb

# You can use the method "puts" to output the result to the console
# puts a_variable
# puts "Hello World!"

# Exercise 1:
# Use a method to transform the string so that every letter on the string is uppercase
puts "Exercise 1:"
alice = "alice"
puts alice.upcase
puts "\n"
#=> ALICE

# Exercise 2:
# Use a method to transform the string so that only the first letter is uppercase
puts "Exercise 2:"
alice = "aLiCe"
puts alice.capitalize
puts "\n"
#=> Alice

# Exercise 3:
# Use a method to transform the string so that it reads backwards
puts "Exercise 3:"
phrase = "The most inflated egos are often the most fragile."
puts phrase.reverse
puts "\n"
#=> ".eligarf tsom eht netfo era soge detalfni tsom ehT"

# Exercise 4:
# Use a method to transform the string so that every "o" turns to "u"
puts "Exercise 4:"
phrase = "The most inflated egos are often the most fragile."
puts phrase.tr("o", "u")
puts "\n"
#=> "The must inflated egus are uften the must fragile."

# Exercise 5:
# Use a method to remove the duplicated ! sign 
puts "Exercise 5:"
phrase = "Hello World!!"
puts phrase.squeeze("!")
puts "\n"
#=> "Hello World!"

# Exercise 6:
puts "Exercise 6:"
# Use a method to remove the vocals from the string
phrase = "The most inflated egos are often the most fragile."
puts phrase.tr("aeiou", "")
puts "\n"
#=> "Th mst nfltd gs r ftn th mst frgl."

# Exercise 7:
# Use a method to count all the characters from the string
puts "Exercise 7:"
phrase = "The most inflated egos are often the most fragile."
puts phrase.size
puts "\n"
#=> 50

# Exercise 8:
# Use a method to invert the string case
puts "Exercise 8:"
phrase = "The most Inflated egOs are ofTen The mOsT Fragile."
puts phrase.swapcase
puts "\n"
#=> "tHE MOST iNFLATED EGoS ARE OFtEN tHE MoSt fRAGILE."

# Exercise 9:
# Use a method check if the word 'fragile' exists on the phrase
puts "Exercise 9:"
phrase = "The most inflated egos are often the most fragile."
puts phrase.include? "fragile"
puts "\n"
#=> true

# Exercise 10:
# Concatenate the two provided strings
puts "Exercise 10:"
greetings = "Hello, my name is:"
name = "Alice"

puts greetings + " " + name
puts "\n"
#=> "Hello, my name is: Alice!"

# Exercise 11:
# Interpolate the two provided strings
puts "Exercise 11:"
greetings = "Hello, my name is:"
name = "Alice"
puts "#{greetings} #{name}!"
puts "\n"
#=> "Hello, my name is: Alice!"

# Exercise 12:
# Repeat the full message 200 times. Mind the spaces
puts "Exercise 12:"
greetings = "Hello, my name is:"
name = "Alice"
puts  "#{greetings} #{name}! " * 200
puts "\n"
#=> "Hello, my name is: Alice! Hello, my name is: Alice! Hello, my name is: Alice!..."