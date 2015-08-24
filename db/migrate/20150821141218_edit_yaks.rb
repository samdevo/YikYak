class EditYaks < ActiveRecord::Migration
  def up
    add_column :yaks, :username, :string
  end
  def down
    remove_column :yaks, :username, :string
  end
end
