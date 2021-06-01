require 'rspec'
require './lib/image_generator'

RSpec.describe ImageGenerator do
  describe '#initialize' do
    it 'exists' do
      image_generator = ImageGenerator.new(2500)
      expect(image_generator).to be_a ImageGenerator
    end

    it 'has attributes' do
      image_generator = ImageGenerator.new(2500)
      expect(image_generator.max_image_size).to eq 2500
    end

    # Using stubs write the tests to confirm the functionality
    # that exists in ./lib/image_generator.rb

    describe '#generate_images' do
      it 'removes randomness of the generate_images method by stubbing it' do
        generate_images = instance_double(ImageGenerator)
        allow(generate_images).to receive(:generate_images).and_return(['image45'])

        response = generate_images.generate_images

        expect(response).to eql ['image45']
      end
    end

    describe '#change_max_size' do
      it 'removes randomness of change_max_size method by stubbing it' do
        generate_images = instance_double(ImageGenerator)
        allow(generate_images).to receive(:change_max_size).with(1000).and_return(500)

        response = generate_images.change_max_size(1000)

        expect(response).to eql 500
      end
    end
  end
end
