class HomeController < ApplicationController
  def index
    @posts = Post.published.order(id: :desc)
  end
end
