class ReviewsController < ApplicationController
  def new
    @review = Review.new(restaurant_id: @restaurant.id)
  end

  def create
    @review = Review.new(restaurant_id: @restaurant.id)
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
