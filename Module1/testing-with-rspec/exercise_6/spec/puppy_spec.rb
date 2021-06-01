require 'spec_helper'
require './lib/puppy'

describe Puppy do
  it 'returns :calm, for "" as parameter' do
    my_puppy = Puppy.new

    result = my_puppy.state

    expect(result).to eql :calm
  end

  it 'returns Bark!, for "" as parameter' do
    my_puppy = Puppy.new

    result = my_puppy.speak

    expect(result).to eql 'Bark!'
  end

  it 'Petting your puppy once makes them wag their tails. Petting your puppy again makes them excited!' do
    my_puppy = Puppy.new

    states = []
    my_puppy.pet
    states << my_puppy.state  # :wagging
    my_puppy.pet
    states << my_puppy.state  # :excited

    expect(states).to eql [:wagging, :excited]
  end

  it 'Your Puppy will start growling if you spray them with water. If you spray them again, they will get angry' do
    my_puppy = Puppy.new

    result = []
    my_puppy.spray
    my_puppy.state  # :growling
    my_puppy.speak  # "Grrrr."

    result << { state: :growling, speak: 'Grrrr' }

    my_puppy.spray
    my_puppy.state  # :angry
    my_puppy.speak  # "BARK BARK BARK!"

    result << { state: :angry, speak: 'BARK BARK BARK!' }

    expect(result).to eql [{ state: :growling, speak: 'Grrrr' },
                           { state: :angry, speak: 'BARK BARK BARK!' }]
  end

  it 'This always calms down your Puppy, no matter how excited or angry they are' do
    my_puppy = Puppy.new

    states = []

    my_puppy.spray
    my_puppy.spray
    states << my_puppy.state

    my_puppy.rub_belly
    states << my_puppy.state

    expect(states).to eql [:angry, :calm]
  end
end
