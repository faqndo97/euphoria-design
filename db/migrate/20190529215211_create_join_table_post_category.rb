# frozen_string_literal: true

# rubocop:disable Style/Documentation
class CreateJoinTablePostCategory < ActiveRecord::Migration[6.0]
  def change
    create_join_table :posts, :categories do |t|
      t.index %i[post_id category_id]
      t.index %i[category_id post_id]
    end
  end
end
# rubocop:enable Style/Documentation
