class AddRenameTypeForVideo < ActiveRecord::Migration[7.0]
  def change
    rename_column :videos, :type, :video_cateory
  end
end
