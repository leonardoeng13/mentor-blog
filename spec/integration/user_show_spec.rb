require 'rails_helper'
require './spec/integration/integration_mocks'

RSpec.describe 'user show view', type: :feature do
  include Mocks
  before :each do
    @users = create_users
    @posts = create_posts(@users)
    visit new_user_session_path
    within('form') do
      fill_in 'user_email', with: 'duck@duck.com'
      fill_in 'user_password', with: 'admin123'
    end
    click_button 'Log in'
  end

  context 'Elements on page show' do
    it 'The user photo is displayed' do
      imgs = page.all('img')
      expect(imgs.length).to equal(@users.length)
    end

    it 'Should display User\'s name' do
      expect(page).to have_content(@users.name)
    end

    it 'User posts number is displayed' do
      users = User.all
      users.each do |user|
        expect(page).to have_content user.PostsCounter
      end
    end

    it 'Should display user bio' do
      expect(page).to have_content 'Name'
    end
  end

  context 'User interaction of profile' do
    it 'Redirect to Posts page' do
      click_link('Posts', match: :first)
      expect(page).to have_content 'Posts'
    end
  end
end
