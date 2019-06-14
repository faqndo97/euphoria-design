require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  # TEST TABLE VALIDATIONS
  should have_db_column(:name)
  should have_db_index(:name)

  # TEST MODEL VALIDATIONS
  should validate_presence_of(:name)
  should validate_length_of(:name).is_at_most(50)

  # TEST MODEL RELATIONS
  should have_and_belong_to_many(:posts)
end
