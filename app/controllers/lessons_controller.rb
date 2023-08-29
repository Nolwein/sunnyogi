class LessonsController < ApplicationController
  def new
    @lesson = Lesson.new
  end

  def create
    @lesson = Lesson.new(lesson_params)
    @user = current_user
    @lesson.user = @user

    if @lesson.save
      redirect_to lesson_path(@lesson), notice: 'Lesson was successfuly created'
    else
      render :new
    end
  end

  def show
    @lesson = Lesson.find(params[:id])
    @favorite = Favorite.new
  end

  def destroy
    @lesson = Lesson.find(params[:id])
    @lesson.destroy
    redirect_to root_path, notice: 'Lesson was successfully deleted'
  end

  private

  def lesson_params
    params.require(:lesson).permit(:name, :duration, :breathing, :posture, :meditation, :level, :boost)
  end
end
