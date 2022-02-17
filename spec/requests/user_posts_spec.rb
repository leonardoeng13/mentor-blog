require 'rails_helper'

RSpec.describe 'UserPostsController', type: :request do
  describe 'GET /user_posts' do
    before(:example) { get user_posts_path }

    it 'server return 200 server ok' do
      expect(response).to have_http_status(200)
    end

    it 'template rendering correctly' do
      expect(response).to render_template(:index)
    end

    it 'shows body content of index' do
      expect(response.body).to include('<h1>UserPosts</h1>')
    end
  end

  describe 'GET POSTS #show' do
    before(:example) { get('/user_posts#show') }

    it 'server return 200 server ok' do
      expect(response).to have_http_status(200)
    end

    it 'shows body content of USER_POSTS/show' do
      expect(response.body).to include('<h1>UserPosts</h1>')
    end
  end
end
