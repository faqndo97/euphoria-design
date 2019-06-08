# frozen_string_literal: true

require 'administrate/base_dashboard'

class PostDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    cover: Field::ActiveStorage.with_options({ show_preview_size:  '150x200>', url_only: true }),
    title: Field::String,
    body: RichTextAreaField,
    state: Field::Select.with_options(
      collection: Post.states.keys,
      searchable: true
    ),
    categories: Field::HasMany.with_options(
      limit: 5,
      direction: :desc
    ),
    created_at: Field::DateTime,
    updated_at: Field::DateTime
  }.freeze

  COLLECTION_ATTRIBUTES = %i[
    id
    title
    state
    created_at
  ].freeze

  SHOW_PAGE_ATTRIBUTES = %i[
    id
    cover
    title
    state
    body
    categories
    created_at
    updated_at
  ].freeze

  FORM_ATTRIBUTES = %i[
    title
    cover
    state
    body
    categories
  ].freeze

  def display_resource(post)
    post.title
  end
end
