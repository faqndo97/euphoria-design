class AddStateToPost < ActiveRecord::Migration[6.0]
  def up
    add_column :posts, :state, :integer
  end

  def down
    remove_column :posts, :state
  end
end
