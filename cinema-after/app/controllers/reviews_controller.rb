class ReviewsController < ApplicationController
  def create
    @movie = Movie.find(params[:movie_id])
    @review = @movie.reviews.create!(params[:review])
    if current_user
      User.delay.share_review(current_user.id, movie_url(@movie))
    end
    redirect_to @review.movie, notice: "Review has been created."
  end
end
