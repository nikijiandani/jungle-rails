require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do

    it 'is valid with valid attributes' do
      category = Category.new
      category.name = "Hardware"
      product = category.products.new 
      product.name = "Sample"
      product.price = 6499
      product.quantity = 12
      expect(product).to be_valid
    end
    it 'is not valid without a valid name' do
      category = Category.new
      category.name = "Bath"
      product = category.products.new
      product.name = nil
      product.price = 6499
      product.quantity = 12
      expect(product).to_not be_valid
      expect(product.errors.full_messages).to include("Name can't be blank")
    end
    it 'is not valid without a valid price' do
      category = Category.new
      category.name = "Bath"
      product = category.products.new
      product.name = "Sample"
      product.price = nil
      product.quantity = 12
      expect(product).to_not be_valid
      expect(product.errors.full_messages).to include("Price cents is not a number")
    end
    it 'is not valid without a valid quantity' do
      category = Category.new
      category.name = "Bath"
      product = category.products.new
      product.name = "Sample"
      product.price = 6499
      product.quantity = nil
      expect(product).to_not be_valid
      expect(product.errors.full_messages).to include("Quantity can't be blank")
    end
    it 'is not valid without a valid category' do
      product = Product.new
      product.category = nil
      product.name = "Sample"
      product.price = 6499
      product.quantity = 12
      expect(product).to_not be_valid
      expect(product.errors.full_messages).to include("Category can't be blank")
    end
  end
end
