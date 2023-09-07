class AddStartTimeToLessons < ActiveRecord::Migration[7.0]
  def change
    add_column :lessons, :start_time, :datetime
  end
end
