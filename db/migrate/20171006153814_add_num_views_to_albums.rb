class AddNumViewsToAlbums < ActiveRecord::Migration[5.1]
  def change
    add_column :albums, :num_views, :integer, default: 0
  end
end
