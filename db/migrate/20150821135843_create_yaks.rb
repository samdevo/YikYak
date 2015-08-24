class CreateYaks < ActiveRecord::Migration
  def up
    create_table :yaks do |t|
      t.integer :location
      t.string :message
    end
  end
  def down
    drop_table :yaks
  end
end
