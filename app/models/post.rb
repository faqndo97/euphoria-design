# frozen_string_literal: true

class Post < ApplicationRecord
  has_rich_text :body
  has_one_attached :cover

  has_and_belongs_to_many :categories

  enum state: %i[draft published]

  validates :title, :description, :state, presence: true
  validates :description, length: { maximum: 280 }
  validates :title, length: { maximum: 140 }

  # before_create :expire_caches_on_create, if: proc { Rails.env == 'production' }
  # after_update :expire_caches_on_update, if: proc { Rails.env == 'production' }

  private

  def expire_caches_on_create
    CacheService.expire_all

    Rails.cache.delete('last_5_posts_ids')
  end

  def expire_caches_on_update
    if last_5_ids.include? id
      CacheService.expire_all
    else
      CacheService.expire(cache_module: :posts)
    end
  end

  def last_5_ids
    Rails.cache.fetch('last_5_posts_ids') do
      Post.last(5).pluck(:id)
    end
  end
end
