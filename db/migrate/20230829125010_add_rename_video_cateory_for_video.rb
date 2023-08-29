class AddRenameVideoCateoryForVideo < ActiveRecord::Migration[7.0]
  def change
    rename_column :videos, :video_cateory, :video_category

  end
end
