# Ruby Dojo
# Docs:
# https://ruby-doc.org/core-3.0.1/
#

# Classes and Instances
# Highlights:
 # - Classes help model two things: state & behavior
 # - The state is what the instance or class, such as attributes, like, name, age, etc
 # - The behavior is what the instance can do, such as eat, swim, walk

# How to run this file
# 1. Open a terminal and `cd` to where the project is
  # cd path/to/ruby-exercises/Module1/classes-and-instances
# 2. Run the file
  # ruby exercise.rb

# You can use the method "puts" to output the result to the console
# puts a_variable
# puts "Alice"

# Exercise 1:
# You are the owner of a Farm with animals, we are modeling that:
# 1. Create a Farm class with name, owner, animals
#   1.1 The class Famr should have the following methods:
#     1.1.1 add_animal - This methods adds an animal to the @animals array for farm
#     1.1.2 animals - Returns the animals array
#     1.1.3 animal_names - Returns an array of the animal names
#     1.1.4 pretty_print - Print the animals on a table, with the name, age and genre, you may need to manipulate a lot of strings for this.
# 2. Create a Cow, Duck, Pig and Horse class
#   2.1 The attributes for the animals above are, name, genre, age
#   2.2 Each animal should the following methods:
#     2.2.1 make_sound - Return a string with the animal sound, like "Muuuu"
#     2.2.2 description - Return a string with the animal description: "My name is Clara the Cow, I have 3 years old and I'm female."
# 3. Create an Owner class
#   3.1 The owner attributes are name, age, genre
#   3.2 The owner should be able to buy animals, therefor a "buy" method, that should also automatically add the animal to the farm

#Farm

puts "Exercise 1:"
class Farm
  attr_accessor :name, :owner, :animals

  def initialize(name, owner, animals)
    @name = name
    @owner = owner
    @animals = []
  end

  def add_animal(animal)
    @animals << animal
  end

  def animals
    @animals
  end

  def animal_names
    @animals.map(&:name)
  end

  def pretty_print
      table_border =  "------------------------------------------------------------"
      table_headers = "-       Name                -      Genre    -      Age    -"
      table_length = table_border.size
      puts table_border
      puts table_headers
      puts table_border
    @animals.each do |animal|
      animal_name =  "#{animal.name}                      "
      line_to_print = "- #{animal_name}- #{animal.genre}        -   #{animal.age}          -"
      puts "- #{animal_name[0..-(line_to_print.size - 59)]}- #{animal.genre}        -   #{animal.age}          -"
      puts "\n"
    end
    puts table_border
  end
end

class Owner
  attr_accessor :name, :age, :genre

  def initialize(name, age, genre)
    @name = name
    @age = age
    @genre = genre
  end

  def buy_animals(animals, farm)
    animals.each { |animal| farm.add_animal animal }
    "animals were added"
  end
end

#Animals
class Cow
  attr_accessor :name, :genre, :age

  def initialize(name, genre, age)
    @name = name
    @genre = genre
    @age = age
  end

  def make_sound
    "Muuu"
  end

  def description
    "My name is #{@name} the Cow, I have #{@age} years old and I'm #{@genre}."
  end
end
class Dog
  attr_accessor :name, :genre, :age

  def initialize(name, genre, age)
    @name = name
    @genre = genre
    @age = age
  end

  def make_sound
    "Guau Guau"
  end

  def description
    "My name is #{@name} the Dog, I have #{@age} years old and I'm #{@genre}."
  end
end
class Pig
  attr_accessor :name, :genre, :age

  def initialize(name, genre, age)
    @name = name
    @genre = genre
    @age = age
  end

  def make_sound
    "Oink Oink"
  end

  def description
    "My name is #{@name} the Pig, I have #{@age} years old and I'm #{@genre}."
  end
end
class Horse
  attr_accessor :name, :genre, :age

  def initialize(name, genre, age)
    @name = name
    @genre = genre
    @age = age
  end

  def make_sound
    "Iiiiiioooooo prrrr"
  end

  def description
    "My name is #{@name} the Horse, I have #{@age} years old and I'm #{@genre}."
  end
end

owner = Owner.new("Fernando", 27, "Male")
farm = Farm.new("My farm", owner, [])

cow = Cow.new("Justina", "Female", 4)
dog = Dog.new("Roberta", "Female", 2)
pig = Pig.new("Chucky", "Male", 4)
horse = Horse.new("Pelota", "Female", 6)

puts owner.buy_animals([dog, cow, horse], farm)
puts farm.inspect

puts farm.animals.inspect
puts farm.animal_names.inspect
puts cow.make_sound
puts pig.description

puts farm.pretty_print


puts "\n"

puts "Exercise 2:"
# Exercise 2:
# Model a Twitter class:
# 1. The twitter class will hold all the tweets, with an instance variable @tweets
# 2. Add `tweets_count` method to get the number of tweets
# 3. A method `tweet` append the new tweet to the twitter instance
# Model a Tweet class:
# 1. The class should have the attributes: id, content, username
#   1.1 The content is a string
#   1.2 The user is a string with the user name
#   1.3 The id is a number, which has to be unique
# 2. The following methods should be included in the class:
#   2.1 like - it should increment the likes for the tweet
#   2.2 retweet - it should add the ability to add text, but will have the tweet appended. HINT: Use a block.

class Twitter
  attr_accessor :tweets

  def initialize(tweets = [])
    @tweets = tweets
  end

  def tweets_count
    @tweets.length.to_i
  end

end

class Tweet
  @@id = 0
  attr_accessor :id, :content, :username, :likes

  def initialize(id = 0, content = "", username = "", twitter)
    @id = @@id+=1
    @content = content.to_s
    @username = username.to_s
    @likes = 0
  end

  def tweet(tweet)
    twitter_instance = Twitter.new()
    twitter_instance.tweets << tweet
  end

  def likes
    @likes += 1
  end

  def retweet(tweet, &block)
    @content = @content + yield.to_s if block_given?
  end
end

tweet = Tweet.new(0,"Mi primer tuit", "Fernando Icalia")
puts tweet.inspect
puts tweet.likes
puts tweet.likes
puts tweet.inspect
tweet.tweet(tweet)

tweet2 = Tweet.new(0, "Mi segundo tuit", "Fernando Icalia")


puts tweet2.inspect
tweet.tweet(tweet2)

puts "Retweet"
retweet =  tweet2.retweet tweet2 do
  puts "Contenido agregado"
end

puts retweet.inspect



twitter = Twitter.new()
print "Tweets count: "
puts twitter.tweets_count


puts "\n"


puts "Exercise 3:"
# Exercise 3:
## Create a shuffler infinity gem team assignator to assign two superheroes per gem
## 1. Every Gem must have two superheroes
## 2. The superheroes already assigned are not allowed to be assigned on other gems
## 3. Build as many classes you think you will need, some may be, Heroe, Gem, InfinityShuffler
## 4. Refactor every time you can
## 5. The code at the bottom must run without change
## Hint: http://ruby-doc.org/core-2.2.0/Array.html#method-i-sort

HEROES = ["Iron Man", "Captain America", "Black Widow", "Hulk", "Hawkeye", "Thor", "Rocket", "Nebula", "War Machine", "Ant Man"]
INFINITY_GEMS = %w{ Mind Soul Time Space Reality }

## Your code starts here

class Gems
  attr_accessor :name

  def initialize(name, gems = [])
    @name = name,
    @gems = gems
  end

  def gem
    @name
  end
end

class Assign
  attr_accessor :gems

  def initialize(gems = [])
    @gems = gems
  end

  def assignations assign
    @gems << assign
  end

  def assign_heroes
  end

end

class InfinityShuffler
  def assignations

  end
end


infinity_shuffler = InfinityShuffler.new

Assign.new
INFINITY_GEMS.each do |gem|
  shuffler.gems << Gems.new(gem)
end.map { |assign| infinity_shuffler.assignations assign }



# Your code ends here

infinity_shuffler = InfinityShuffler.new

shuffler.assign_heroes

shuffler.assignations.each do |assignation|
  puts assignation.gem

  # puts "###Assignation for #{assignation.gem.name} ###"
  # assignation.gems.each do |gem|
  #   puts "The #{gem.name} Gem"
  #   puts "Is in charge of:"
  #   # assignation.heroes.each do |heroes|
  #   #   puts "#{heroe.name}"
  #   # end
  # end
end

# puts "\n"
