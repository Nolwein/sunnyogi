class CreatePlaylists < ActiveRecord::Migration[7.0]
  def change
    create_table :playlists do |t|
      t.references :lesson, null: false, foreign_key: true
      t.references :video, null: false, foreign_key: true
      t.integer :order

      t.timestamps
    end
  end
end
