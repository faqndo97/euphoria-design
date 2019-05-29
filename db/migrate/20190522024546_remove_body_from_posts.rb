# frozen_string_literal: true

# rubocop:disable Style/Documentation
class RemoveBodyFromPosts < ActiveRecord::Migration[6.0]
  def up
    remove_column :posts, :body
  end

  def down
    add_column :posts, :body
  end
end
# rubocop:enable Style/Documentation
