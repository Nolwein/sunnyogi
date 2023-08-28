class CreateVideos < ActiveRecord::Migration[7.0]
  def change
    create_table :videos do |t|
      t.string :name
      t.string :type
      t.integer :duration
      t.string :boost
      t.string :level

      t.timestamps
    end
  end
end
