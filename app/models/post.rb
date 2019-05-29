class Post < ApplicationRecord
  has_rich_text :body

  has_and_belongs_to_many :categories

  enum state: %i[draft published]

  validates :title, presence: true
end
