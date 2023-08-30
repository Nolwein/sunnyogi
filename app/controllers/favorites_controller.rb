class FavoritesController < ApplicationController
  before_action :set_favorite, only: [:destroy]

  def create
    @lesson = Lesson.find(params[:lesson_id])
    # @user = current_user
    @favorite = Favorite.new(user: current_user, lesson: @lesson)

    if @favorite.save
      flash[:notice] = "Successfully add to your favorites!"
      # redirect_to lessons_path
    else
      flash[:alert] = "Unable to add to your favorite. Please try again."
      redirect_to lesson_path(@lesson)
    end
  end

  def destroy
    @favorite.destroy
    redirect_to owner_profile_path, status: :see_other
  end

  private

  def set_favorite
    @favorite = Favorite.find(params[:id])
  end
end
