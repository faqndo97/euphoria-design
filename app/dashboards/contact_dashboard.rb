require "administrate/base_dashboard"

class ContactDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    message: Field::Text,
    name: Field::String,
    email: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  COLLECTION_ATTRIBUTES = %i[
    id
    message
    name
    email
  ].freeze

  SHOW_PAGE_ATTRIBUTES = %i[
    id
    message
    name
    email
    created_at
    updated_at
  ].freeze

  FORM_ATTRIBUTES = %i[
    message
    name
    email
  ].freeze

end
