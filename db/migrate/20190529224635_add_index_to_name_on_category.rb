# frozen_string_literal: true

# rubocop:disable Style/Documentation
class AddIndexToNameOnCategory < ActiveRecord::Migration[6.0]
  def change
    add_index :categories, :name
  end
end
# rubocop:enable Style/Documentation
