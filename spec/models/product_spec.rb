require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    before :each do
      @category = Category.new
      @category.name = "Bath"
      @product = @category.products.new
      @product.name = "Sample"
      @product.price_cents = 6499
      @product.quantity = 12
    end
    it 'should be valid when all attributes are set' do
      expect(@product).to be_valid
    end
    it 'should not be valid when name is nil' do
      @product.name = nil
      expect(@product).to_not be_valid
      expect(@product.errors.full_messages).to include("Name can't be blank")
    end
    it 'should not be valid without a valid price' do
      @product.price_cents = nil
      expect(@product).to_not be_valid
      expect(@product.errors.full_messages).to include("Price cents is not a number")
    end
    it 'is not valid without a valid quantity' do
      @product.quantity = nil
      expect(@product).to_not be_valid
      expect(@product.errors.full_messages).to include("Quantity can't be blank")
    end
    it 'is not valid without a valid category' do
      @product.category = nil
      expect(@product).to_not be_valid
      expect(@product.errors.full_messages).to include("Category can't be blank")
    end
  end
end
