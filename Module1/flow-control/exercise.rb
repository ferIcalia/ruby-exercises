# Ruby Dojo
# Docs:
# https://ruby-doc.org/core-3.0.1/
#

# Working with conditionals and loops in Ruby
# Highlights:
 # - There are two boolean operators - || and &&
 # - The evaluation of a condition is a boolean
 # - Watch for infinite loops for a condition
  
# How to run this file
# 1. Open a terminal and `cd` to where the project is
  # cd path/to/ruby-exercises/Module1/flow-control
# 2. Run the file
  # ruby exercise.rb

# You can use the method "puts" to output the result to the console
# puts a_variable
# puts "Alice"

# Exercise 1:
# Given an array of integers print when is odd and when is even
# Hint: You need to use one of the loops from the lesson
puts "Exercise 1:"
integers = (1..100).to_a

i = 0
while i <= 99
  puts integers[i] % 2 == 0 ? "#{i+1} => even" : "#{i+1} => odd"
  i+=1
end
puts "\n"

# Exercise 2:
# You get to throw a dice, print the following for each value:
# 1 - You only live once
# 2 - You have two hands
# 3 - March is the third month of the year
# 4 - Fantastic Four
# 5 - 5 seconds to...
# 6 - Number of first Avengers
puts "Exercise 2:"
dice = [1,2,3,4,5,6]

i = 0
while i <= 5
  if dice[i] == 1
    puts "1 - You only live once"
  elsif dice[i] == 2
    puts "2 - You have two hands"
  elsif dice[i] == 3
    puts "3 - March is the third month of the year"
  elsif dice[i] == 4
    puts "4 - Fantastic Four"
  elsif dice[i] == 5
    puts "5 - 5 seconds to..."
  elsif dice[i] == 6
    puts "6 - Number of first Avengers"
  end
  i+=1
end
puts "\n"

# Exercise 3:
puts "Exercise 3: ?"
# Given the following code:
# 1. What is the output from the first condition => puts "There is plenty of cars for everyone"
# 2. What is the output from the second condition => "Four wheels are safer"
# 3. What is the output from the third condition => "Maybe we split?"
# 4. Change the values for people, cars and motorcycles:
#    4.1 people = 20, cars = 10, motorcycles = 30
people = 20
cars = 10
motorcyles = 30

if cars > people
  puts "There is plenty of cars for everyone"
elsif cars < people
  puts "We don't have enough cars"
else
  puts "Well this is odd!"
end

if motorcyles > cars
  puts "We love the two wheels vehicles"
elsif motorcyles < cars
  puts "Four wheels are safer"
else
  puts "Is there any other out?"
end

if people > motorcyles
  puts "Maybe we split?"
else
  puts "Everyone gets a bike"
end

puts "\n"
# Exercise 4: 
# Given an string:
# 1. print the words that have 2 letters, following this format - The word 'On' has two words (letters?) 
# 2. print the words that have more than to 2 letters and less or equal to 5 letters, following this format - The word 'man' has thre words
# 3. print the words that have more than 5 letters, following this format - The word 'offering' has more than 5 words 
puts "Exercise 4: "
phrase = "On offering to help the blind man, the man who then stole his car, had not, at that precise moment, had any evil intention, quite the contrary, what he did was nothing more than obey those feelings of generosity and altruism which, as everyone knows, are the two best traits of human nature and to be found in much more hardened criminals than this one, a simple car-thief without any hope of advancing in his profession, exploited by the real owners of this enterprise, for it is they who take advantage of the needs of the poor"

words = phrase.split(" ")

i = 0
while i <= words.length
  puts "The word '#{words[i]}' has two letters" if words[i].to_s.size == 2
  i+=1
end

puts "\n"

i = 0
while i <= words.length
  if words[i].to_s.size > 2 && words[i].to_s.size <= 5
    if words[i].to_s.size == 3
      puts "The word '#{words[i]}' has three letters"
    elsif words[i].to_s.size == 4
      puts "The word '#{words[i]}' has four letters"
    else
      puts "The word '#{words[i]}' has five letters"
    end
  end 
  i+=1
end

puts "\n"

i = 0
while i <= words.length
  puts "The word '#{words[i]}' more than 5 words" if words[i].to_s.size > 5
  i+=1
end


puts "\n"
# Exercise 5:
# Using a `times` iterator print the even numbers from a given number
puts "Exercise 5:"
number = 100

number.times do |n|
  puts n % 2 == 0 ? "#{n} => even" : "#{n} => odd"
end

puts "\n"
# Exercise 6:
# Using a `times`, `while` and `until` loops print "Beetlejuice!" three times

puts "Exercise 6:"

3.times { puts "Beetlejuice!" }

puts "\n"

i = 0
while i < 3
  puts "Beetlejuice!"
  i+=1
end

puts "\n"

i = 0
until i == 3
  puts "Beetlejuice!"
  i+=1
end

