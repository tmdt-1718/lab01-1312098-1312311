class CreatePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :photos do |t|
      t.string :album_id
      t.text :img
      t.integer :num_views
    end
  end
end
