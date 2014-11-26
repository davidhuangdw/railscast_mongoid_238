class ReviewsController < ApplicationController

  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.build(review_params)
    if @review.save
      redirect_to :back, notice:'Comment added successfully.'
    else
      redirect_to :back, alert: @review.errors.full_messages.join('\n')
    end

  end

  private
  def review_params
    params.require(:review).permit(:content)
  end
end
