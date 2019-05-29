class Post < ApplicationRecord
  has_rich_text :body

  enum state: %i[draft published]
end
