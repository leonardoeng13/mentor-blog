require 'test_helper'

class UserPostsControllerTest < ActionDispatch::IntegrationTest
  test 'should get new' do
    get user_posts_new_url
    assert_response :success
  end

  test 'should get create' do
    get user_posts_create_url
    assert_response :success
  end

  test 'should get update' do
    get user_posts_update_url
    assert_response :success
  end

  test 'should get edit' do
    get user_posts_edit_url
    assert_response :success
  end

  test 'should get destroy' do
    get user_posts_destroy_url
    assert_response :success
  end

  test 'should get index' do
    get user_posts_index_url
    assert_response :success
  end

  test 'should get show' do
    get user_posts_show_url
    assert_response :success
  end
end
