class ReviewsController < ApplicationController

  expose(:review)
  expose(:product)
  expose_decorated(:review)

  def show
  end

  def editt
  end

  def create
    self.review = Review.new(review_params)
    current_user.reviews << review
    if review.save
      product.reviews << review
      redirect_to category_product_url(product.category, product), notice: 'Review was successfully created.'
    else
      render action: 'new'
    end
  end

  def destroy
    review.destroy
    redirect_to category_product_url(product.category, product), notice: 'Review was successfully destroyed.'
  end

  private
    def review_params
      permited_params = params.require(:review).permit(:content, :rating)
    end
end
