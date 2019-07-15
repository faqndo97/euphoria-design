class HomeController < ApplicationController
  caches_page :index

  def index
    @posts = Post.published.last(5)
  end
end
