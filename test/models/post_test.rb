require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # TEST TABLE VALIDATIONS
  should have_db_column(:title)
  should have_db_index(:title)

  # TEST MODEL VALIDATIONS
  should validate_presence_of(:title)
  should validate_presence_of(:description)
  should validate_presence_of(:state)
  should validate_length_of(:description).is_at_most(280)

  # TEST MODEL ENUMS
  should define_enum_for(:state).with(%i[draft published])

  # TEST RELATIONS
  should have_and_belong_to_many(:categories)
end
