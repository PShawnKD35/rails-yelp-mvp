# frozen_string_literal: true

class ReviewsController < ApplicationController
  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(params.require(:review).permit(:rating, :content))
    @review.restaurant = @restaurant
    if @review.save
      redirect_to @restaurant
    else
      render "restaurants/show"
    end
  end
end
