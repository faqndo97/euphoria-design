# frozen_string_literal: true

class PostsController < ApplicationController
  before_action :set_post, only: %i[show]

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end
end
