# Ruby Dojo
# Docs:
# https://ruby-doc.org/core-3.0.1/
#

# Introduction to enumerables
# Highlights:
 # - The enumerable works on collections, whether arrays or hash
 # - Enumerable implements many each patterns
  
# How to run this file
# 1. Open a terminal and `cd` to where the project is
  # cd path/to/ruby-exercises/Module1/enumerables
# 2. Run the file
  # ruby exercise.rb

# You can use the method "puts" to output the result to the console
# puts a_variable
# puts "Alice"

# Exercise 1:
# Make the following method use #map, instead of #each
puts "Exercise 1:"
def super_heroes
  heroes = ["iron man", "hulk", "black widow", "thor", "captain marvel"]
  capitalized_heroes = []

  heroes.each do |heroe|
    capitalized_heroes << heroe.capitalize
  end

  capitalized_heroes
end


def super_heroes_with_map
  heroes = ["iron man", "hulk", "black widow", "thor", "captain marvel"]
  capitalized_heroes_map = heroes.map { |heroe| heroe.capitalize }
end
puts super_heroes_with_map.inspect

puts "\n"

# Exercise 2:
# Find the first superhero name with a complex name
# A complex name is the one with two words separated by a space
puts "Exercise 2:"
def complex_super_heroe
  heroes = ["iron man", "hulk", "black widow", "thor", "captain marvel"]
end

puts complex_super_heroe.find { |heroe| heroe.include? " " }
puts "\n"

# Exercise 3:
# Given an array of numbers, return the an array of numbers divisible by 5 and 3
# Remember to use an enumerable
puts "Exercise 3:"

def divisible_by_5_and_3
  numbers = (1..100).to_a # this will create an array from 1 to 100. Check the Range class from Ruby - https://ruby-doc.org/core-2.5.1/Range.html
end

numbers_divisible_by_five_or_three = divisible_by_5_and_3.select do |number|
  number % 5 == 0
  number % 3 == 0
end
puts numbers_divisible_by_five_or_three
puts "\n"

# Exercise 4:
# Given the following code with #each, transform it using an enumerable
puts "Exercise 4:"
def all_zeros?(numbers = [])
  all_zeros = true
  numbers.each do |number|
    return all_zeros = false if !number.zero?
  end

  all_zeros
end

def all_zeros_with_select?(numbers = [])
  different_to_zero = numbers.select do |number|
    number != 0
  end

  different_to_zero.length == 0
end

puts all_zeros_with_select? [0,0,0,0,0,0,1]
puts "\n"

# Exercise 5:
# Complete the following method to meet:
# Check whether the array only has empty strings
puts "Exercise 5:"

def all_empty?(words = [])
  different_to_empty = words.select { |word| !word.empty? }

  different_to_empty.length == 0
end

puts all_empty? ["","",""]

puts "\n"

# Exercise 6:
# Complete the following method to meet:
# Get an array of only full names. Full names are the ones with a last name
# names array example - ["Iron Man", "Hulk", "Goku", "Anakin Skywalker", "Darth Vader", "Gohan"]
puts "Exercise 6:"
def full_names(names = [])
  full_names = []
  names.select { |name| full_names << name if name.include? " " }

  full_names
end

puts full_names ["Iron Man", "Hulk", "Goku", "Anakin Skywalker", "Darth Vader", "Gohan"]

puts "\n"
# Exercise 7:
# Complete the following method to meet:
# Check whether or not the array include "dog". Return a boolean value
puts "Exercise 7:"
def include_dog?
  animals = ["cat", "elephant", "lion", "dog", "jaguar", "snake"]
  dog_exists = animals.find { |animal| animal == "dog" }

  dog_exists != nil
end

puts include_dog?

puts "\n"

# Exercise 8:
# Complete the following code to meet:
# Return an array of rounded numbers
# You can use #round method from the Float class
puts "Exercise 8:"

def round_numbers
  numbers = [5.45, 3.99, 4.67, 1.49, 3.14, 9.41]
  rounded_numbers = numbers.map { |number| number.round }

  rounded_numbers
end
puts round_numbers

puts "\n"

# Exercise 9:
# Complete the following code to meet:
# Return a number with total of elements that match only the numbers that are negative
puts "Exercise 9:"
def total_negative_numbers
  numbers = [0, 3, -1, -45.4, 5, 68, -8]
  negative_numbers = numbers.select { |number| number < 0 }

  negative_numbers
end

puts total_negative_numbers

puts "\n"

# Exercise 10:
# Using the group_by enumerable method, return a hash grouping the words by lenght, where the key is the length and the value
# is the array with the words matching that
puts "Exercise 10:"
def group_words_by_length
  words = ["alice", "tony", "steve", "carlos", "rick", "martin", "chris", "tom", "david", "megan", "sue"]

  indexes = words.map { |word| word.size }
  indexes = indexes & indexes
  indexed_hash = {}
  indexes.map do |index|
    indexed_hash[index] = []
  end

  ordered_words = words.map do |word|
    indexed_hash[word.size] << word
  end
  indexed_hash

  #=> {5 => ["alice", "steve", "carlos", "chris", "david", "megan"], 4 => ["tony", "rick"], 3 => ["sue", "tom"]}
end

puts group_words_by_length
puts "\n"

# Exercise 11:
# Using the reject enumerable method, return an array excluding the prime numbers
puts "Exercise 11:"
def is_prime_number?(number)
  counter = 0
  for i in 1..number do
    if number % i == 0
      counter += 1
    end
end
if counter == 2
    number
end
end


def exclude_prime_numbers
  numbers = (1..100).to_a

  prime_numbers_excluded = numbers.reject { |number| !is_prime_number? number }

  prime_numbers_excluded
  #=> [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
end

puts exclude_prime_numbers

puts "\n"

# Exercise 12:
# Using the select enumerable method, filter only the heroes that are female
puts "Exercise 12:"

def keep_only_female_heroes
  heroes = [
    {name: "Iron Man", gender: "male"},
    {name: "Black Widow", gender: "female"},
    {name: "Spider Man", gender: "male"},
    {name: "Thor", gender: "male"},
    {name: "Captain Marvel", gender: "female"},
    {name: "The Wasp", gender: "female"},
    {name: "Hulk", gender: "undefined"},
  ]

  female_heroes = heroes.select { |heroe| heroe[:gender] == "female" }

  female_heroes

  #=> [{name: "Black Widow", gender: "female"}, {name: "Captain Marvel", gender: "female"}, {name: "The Wasp", gender: "female"}]
end

puts keep_only_female_heroes
puts "\n"

# Exercise 13:
# Using the sort_by enumerable method, sort alphabetically by the first letter of the word

puts "Exercise 13:"
def sort_alphabetically_by_first_letter
  countries = ["Mexico", "Canada", "Brazil", "France", "England", "Australia", "United States", "Denmark", "Japan", "Italy"]

  sorted_countries = countries.sort_by { |country| country }
  sorted_countries
  #=> ["Australia", "Brazil", "Canada", "Denmark", "England", "France", "Italy", "Japan", "Mexico", "United States"]
end

puts sort_alphabetically_by_first_letter

puts "\n"