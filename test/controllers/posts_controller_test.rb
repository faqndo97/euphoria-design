require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post = posts(:one)
  end

  should 'get index' do
    get posts_url

    assert_response :success
  end

  should 'show post' do
    get post_url(@post)

    assert_response :success
  end
end
