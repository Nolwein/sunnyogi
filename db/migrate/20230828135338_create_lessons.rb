class CreateLessons < ActiveRecord::Migration[7.0]
  def change
    create_table :lessons do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.integer :duration
      t.boolean :breathing
      t.boolean :posture
      t.boolean :meditation
      t.string :level
      t.string :boost

      t.timestamps
    end
  end
end
