class ReviewsController < ApplicationController
  include Pundit
  def new
    @review = Review.new
    authorize @review

  end

  def create
    @review = Review.new(review_params)
    authorize @review
    @review.user = user
    if @review.save
      redirect_to new_review_path
    else
      flash[:alert] = "Something went wrong."
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
