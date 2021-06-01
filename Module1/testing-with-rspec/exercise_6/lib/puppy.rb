class Puppy
  # Creates an instance variable "state" that you can set in your class.
  # "_reader" means other objects can read your state by calling "some_puppy.state".
  attr_reader :state

  def initialize
    # Puppies are calm at first.
    @state = :calm
    @pet = 0
    @spray = 0
  end

  def pet
    @pet += 1
    @state = :wagging if @pet == 1
    @state = :excited if @pet > 1
  end

  def rub_belly
    @pet = 0
    @state = :calm
  end

  def spray
    @spray += 1
    @state = :growling if @spray == 1
    @state = :angry if @spray == 1

  end

  def speak
    if @spray == 1
      'Grrrr'
    elsif @spray > 1
      'BARK BARK BARK!'
    else
      'Bark!'
    end
  end
end
