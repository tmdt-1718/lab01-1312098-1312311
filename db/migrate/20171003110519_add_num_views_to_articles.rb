class AddNumViewsToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :num_views, :integer, default: 0
  end
end
