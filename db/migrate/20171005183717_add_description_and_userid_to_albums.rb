class AddDescriptionAndUseridToAlbums < ActiveRecord::Migration[5.1]
  def change
    add_column :albums, :description, :text
    add_column :albums, :user_id, :integer
  end
end
