class FavoritesController < ApplicationController
  before_action :set_favorite, only: [:destroy]

  def create
    @lesson = Lesson.find(params[:lesson_id])
    @favorite = Favorite.new(user: current_user, lesson: @lesson)

    if @favorite.save
      flash[:notice] = "Successfully add to your favorite lessons !"
      redirect_to lesson_path(@lesson)
    else
      flash[:alert] = "Already in your favorites lessons."
      redirect_to lesson_path(@lesson)
    end
  end

  def destroy
    @favorite.destroy
    redirect_to profile_path, status: :see_other
  end

  private

  def set_favorite
    @favorite = Favorite.find(params[:id])
  end

end
