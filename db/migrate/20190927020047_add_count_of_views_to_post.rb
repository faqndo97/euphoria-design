class AddCountOfViewsToPost < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :count_of_views, :integer, null: false, default: 0
  end
end
