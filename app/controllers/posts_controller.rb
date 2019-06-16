# frozen_string_literal: true

class PostsController < ApplicationController
  def index
    @posts = Post.published
  end

  def show
    @post = Post.published.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to posts_url
  end
end
