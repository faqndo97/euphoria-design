# frozen_string_literal: true

# rubocop:disable Style/Documentation
class AddIndexToTitleOnPost < ActiveRecord::Migration[6.0]
  def change
    add_index :posts, :title
  end
end
# rubocop:enable Style/Documentation
