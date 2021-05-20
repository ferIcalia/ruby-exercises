# Ruby Dojo
# Docs:
# https://ruby-doc.org/core-3.0.1/
#

# Working with Modules in Ruby
# Highlights:
 # - You can mixin modules with include to have instance methods
 # - You can mixin modules with exclude to have class methods
 # - Modules can live by themselves

# Exercise 1:
# Given the following code:'
# 1. Extract the start and stop methods into a module called Engine
# 2. Create a OilChangeable module to include on the where you can change the oil
# 3. Create a module to extend the classes with an engine, that:
#  3.1 Have a method to return a description about the engine, something like: "Hey I run on Oil"
#

#Modules
module Engine
  def start
    puts "Starting engine..."
  end

  def engine_description
    puts "Hey I run on Oil"
  end

  def stop
    puts "Stopping engine..."
  end
end

module OilChangeable
  def change_oil
    puts "Oil changed"
  end
end


#Classes
class Bycicle
  def drive
    puts "This is actually nor drive, but ride!"
  end
end

class Motorcycle
  extend Engine
  include OilChangeable

  def drive
    puts "Bad boys for life!"
  end
end

class Car
  extend Engine
  include OilChangeable

  def drive
    puts "Four wheels rule!"
  end
end

Car.start
Car.engine_description
motorcycle = Motorcycle.new()
motorcycle.change_oil
