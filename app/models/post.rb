# frozen_string_literal: true

class Post < ApplicationRecord
  has_rich_text :body
  has_one_attached :cover

  has_and_belongs_to_many :categories

  enum state: %i[draft published]

  validates :title, :description, :state, presence: true
  validates :description, length: { maximum: 280 }
  validates :title, length: { maximum: 140 }
end
