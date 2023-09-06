class LessonsController < ApplicationController

  def index
    # @lessons = Lesson.all
    @user = current_user
    start_date = params.fetch(:start_date, Date.today).to_date
    @lessons = Lesson.where(lesson_date: start_date.beginning_of_month.beginning_of_week..start_date.end_of_month.end_of_week)
  end

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
    @lesson.lesson_date = Time.now
    @lesson.start_time = @lesson.lesson_date

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
