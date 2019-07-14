class ReviewsController < ApplicationController

  before_action :authorize, only: [:create]

  def index
    @reviews = Review.all
  end

  def create
    @product = Product.find params[:product_id]
    @review = @product.reviews.new(review_params)
    @review.user = current_user
    @review.product_id = @product.id
    p @review
    if @review.save
      redirect_to product_path(@product)
    else
      redirect_to product_path(@product)
    end
  end

  def destroy
    @product = Product.find params[:product_id]
    @review = @product.reviews.find(params[:id])
    @review.destroy
    redirect_to product_path(@product)
  end

  private

  def review_params
    params.permit(:description, :rating)
  end
end
