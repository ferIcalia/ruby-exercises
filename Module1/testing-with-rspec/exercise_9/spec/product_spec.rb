require 'spec_helper'
require './lib/product'

describe Product do
  it 'returns [x] when add_review is called' do
    product = Product.new('Bandai action figure', 1000)

    result = product.add_review 'it is a good product'

    expect(result).to eql ['it is a good product']
  end

  it 'returns "weak" if product has less than 5 reviews' do
    product = Product.new('Bandai action figure', 1000)

    product.add_review 'it is a good product'
    result = product.read_reviews


    expect(result).to eql 'weak'
  end

  it 'returns "okay" if product has more than 5 reviews' do
    product = Product.new('Bandai action figure', 1000)

    product.add_review 'it is a good product'
    product.add_review 'nice product'
    product.add_review 'works well'
    product.add_review 'worth'
    product.add_review 'good'
    product.add_review 'very nice and cheap'

    result = product.read_reviews

    expect(result).to eql 'okay'
  end

  it 'returns "strong" if product more than 10 reviews' do
    product = Product.new('Bandai action figure', 1000)

    product.add_review 'it is a good product'
    product.add_review 'nice product'
    product.add_review 'works well'
    product.add_review 'worth'
    product.add_review 'good'
    product.add_review 'very nice and cheap'
    product.add_review 'try it'
    product.add_review 'best product ever'
    product.add_review 'it is ok'
    product.add_review 'Awesome!'
    product.add_review 'great value for the price!'

    result = product.read_reviews

    expect(result).to eql 'strong'
  end

  it 'returns "Bandai action figure currently costs 1000" when an a product called Bandai action figure is created' do
    product = Product.new('Bandai action figure', 1000)

    result = product.read_product_info

    expect(result).to eql 'Bandai action figure currently costs 1000'
  end
end
