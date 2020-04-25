class DropStarsTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :stars
  end
end
