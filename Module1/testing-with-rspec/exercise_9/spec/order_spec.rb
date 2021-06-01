require 'spec_helper'
require './lib/order'

describe Order do
  it 'returns 1 if add to cart is called once' do
    order = Order.new

    result = order.add_to_cart

    expect(result).to eql 1
  end

  it 'returns 1 if add to cart is called twice' do
    order = Order.new

    order.add_to_cart
    result = order.add_to_cart

    expect(result).to eql 2
  end

  it 'returns 0 if cart has less than 5 articles' do
    order = Order.new

    result = order.add_to_cart
    result = order.update_discount

    expect(result).to eql 0
  end

  it 'returns 0.20 if cart has less than 5 articles' do
    order = Order.new

    order.add_to_cart
    order.add_to_cart
    order.add_to_cart
    order.add_to_cart
    order.add_to_cart
    order.add_to_cart

    result = order.update_discount

    expect(result).to eql 0.20
  end

  it 'returns 0.20 if cart has less than 5 articles' do
    order = Order.new

    expect(order.check_out).to eql 'You must have products to proceed'
  end
end
