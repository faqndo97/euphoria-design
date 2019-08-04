class PostsController < ApplicationController
  caches_page :index

  def index
    @categories = Category.all
    category_filter = { name: params[:category] }
    category_filter = { id: @categories } if category_filter[:name].nil?

    @posts = Post.with_attached_cover.published.includes(:categories).where(categories: category_filter)
  end

  def show
    @post = Post.published.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to posts_url
  end
end
