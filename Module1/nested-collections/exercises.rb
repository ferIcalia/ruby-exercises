# Ruby Dojo
# Docs:
# https://ruby-doc.org/core-3.0.1/
#

# Working with Nested Collections in Ruby
# Highlights:
 # - You can nested hash into arrays and the other way around
 # - You can modify the content of any of the nested collections
 # - You can remove elements from the collections

# How to run this file
# 1. Open a terminal and `cd` to where the project is
  # cd path/to/ruby-exercises/Module1/nested-collections
# 2. Run the file
  # ruby exercise.rb

# You can use the method "puts" to output the result to the console
# puts a_variable
# puts ["Luke", "Yoda"]

# Exercise 1:
puts "Exercise 1:"
# Sum all the elements from a nested array
# HINT: Try using map and reduce
def sum_nested_collection
  nested_numbers = [[1,2,3], [5,6,7,5], [9,10,13,6], [1]]
  # total_sum = nested_numbers.flatten.sum

  total = 0
  nested_numbers.map do |array_item|
    total += array_item.reduce(&:+)
  end

  total
end

puts sum_nested_collection

puts "\n"

# Exercise 2:
puts "Exercise 2:"
# Given the following data collections
countries = {
  "United States" => "US",
  "Mexico" => "MX",
  "Canada" => "CA",
  "Rusia" => "RU",
  "France" => "FR"
}

capitals = {
  "US" => "Washington DC",
  "MX" => "CDMX",
  "CA" => "Ottawa",
  "RU" => "Moscow",
  "FR" => "Paris"
}

# 1. Create a method that receives a country name and return the abbreviation
def get_abbreviation(country_name, countries_hash)
  countries_hash[country_name]
end

puts get_abbreviation "Mexico", countries

# 2. Create a method that receives a country and outputs its capital
def get_capital(country_name, capitals_hash, countries_hash)
  abbreviation = countries_hash[country_name]
  capitals_hash[abbreviation]
end

puts get_capital "France", capitals, countries

# 3. Create a method that receives a capital and return the country name
def get_country_name(capital, capitals_hash, countries_hash)
  country_abbreviation = capitals_hash.find { |key, value| value.include? capital }.first
  countries_hash.find { |key, value| value.include? country_abbreviation }.first
end

puts get_country_name "Moscow", capitals, countries

# 4. Create a method to create a hash that looks like this:
{
  "United States" => { abbreviation: "US", capital: "Washington DC" },
  "Mexico" => { abbreviation: "MX", capital: "CDMX" },
  "Canada" => { abbreviation: "CA", capital: "Ottawa" },
  "Rusia" => { abbreviation: "RU", capital: "Moscow" },
  "France" => { abbreviation: "FR", capital: "Paris" },
}

def create_countries_hash(countries, capitals)
  countries.map do|countries_key, countries_value|
    countries[countries_key] =  {
      :abbreviation => countries_value,
      :capital => capitals.find { |capitals_key, capitals_value| countries_value.include? capitals_key }.last
    }
  end
  countries
end

puts create_countries_hash countries, capitals
