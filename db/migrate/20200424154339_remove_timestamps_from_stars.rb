class RemoveTimestampsFromStars < ActiveRecord::Migration[5.2]
  def change
    remove_column :stars, :created_at, :string
    remove_column :stars, :updated_at, :string
  end
end
