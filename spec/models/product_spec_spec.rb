require 'rails_helper'
require_relative '../../app/models/product'

RSpec.describe ProductSpec, type: :model do
  describe 'Validations' do
    # validation tests/examples here
    it 'validates name' do
      product = Product.new(name:"bill").valid?
    end
    it 'validates price' do
      product = Product.new(price:15.16).valid?
    end
    it 'validates quantity' do
      product = Product.new(quantity:10).valid?
    end
    it 'validates category' do
      product = Product.new(category: Category.new).valid?
    end
    it 'validates name, price, quantity, category' do
      product = Product.new(name: "bob", price: "1.00", quantity: 5, category: Category.new).valid?
      expect(product).to be true
    end
  end
end
