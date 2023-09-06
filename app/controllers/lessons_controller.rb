class LessonsController < ApplicationController

  def new
    @user = current_user
    @lesson = Lesson.new
  end

  def create
    sleep(6)
    @lesson = Lesson.new(lesson_params)
    @user = current_user
    @lesson.user = @user
    @user.xp += 5
    @user.save
    @lesson.video_url = "https://www.youtube.com/embed/videoseries?si=ekewy4betuNl00qf&amp;list=PLsQy3ETrPSMEeumNwo3itn_JHGado6__W"

    if @lesson.save
      redirect_to lesson_path(@lesson), notice: 'Lesson was successfuly created!'
    else
      render :new
    end
  end

  def show
    @user = current_user
    @lesson = Lesson.find(params[:id])
    @favorite = Favorite.new
  end

  def destroy
    @lesson = Lesson.find(params[:id])
    Favorite.where(lesson: @lesson).destroy_all

    if @lesson.destroy
      flash[:notice] = "Lesson was successfully deleted!"
      redirect_to profile_path
    else
      flash[:alert] = "Error."
      redirect_to profile_path
    end
  end

  private

  def lesson_params
    params.require(:lesson).permit(:name, :duration, :breathing, :posture, :meditation, :level, :boost)
  end
end
