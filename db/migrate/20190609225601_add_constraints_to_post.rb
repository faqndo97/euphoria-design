class AddConstraintsToPost < ActiveRecord::Migration[6.0]
  def change
    change_column :posts, :description, :text, null: false, limit: 280
    change_column :posts, :state, :integer, null: false, default: 0
    change_column :posts, :title, :string, null: false, limit: 140
    change_column :categories, :name, :string, null: false, limit: 50

    add_index :posts, :state
  end
end
