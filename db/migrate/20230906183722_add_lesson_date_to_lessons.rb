class AddLessonDateToLessons < ActiveRecord::Migration[7.0]
  def change
    add_column :lessons, :lesson_date, :datetime
  end
end
