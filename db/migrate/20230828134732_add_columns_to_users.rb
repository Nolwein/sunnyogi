class AddColumnsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :username, :string
    add_column :users, :xp, :integer
    add_column :users, :level, :integer
    add_column :users, :reward, :string
  end
end
