require 'rails_helper'
require 'capybara/rspec'

RSpec.describe 'Login' do
  before :each do
    User.create(name: 'Test', email: 'test@test.com', password: 'test1234', role: false, PostCounter: 0)
  end

  describe 'when vising log in page', type: :feature do
    before :each do
      visit '/users/sign_in'
    end
    it 'It should have email input field' do
      expect(page).to have_text('Email')
    end

    it 'It should have password inpuput field' do
      visit '/users/sign_in'
      expect(page).to have_text('Password')
    end

    it 'When submit button clicked without filling in the username and the password, a Detailed error is presented.' do
      visit '/users/sign_in'
      click_button 'Log in'
      expect(page).to have_text('Log in')
    end

    it 'When incorrect username and the password are submitted, detailed error is presented.' do
      visit '/users/sign_in'
      fill_in 'Email', with: 'incorect@example.com'
      fill_in 'Password', with: 'incorrectPass'
      click_button 'Log in'
      expect(page).to have_text('Invalid Email or password.')
    end

    it 'When correct username and the password are submitted, redirected to the root page.' do
      visit '/users/sign_in'
      fill_in 'Email', with: 'test@test.com'
      fill_in 'Password', with: 'test1234'
      click_button 'Log in'
      expect(page).to have_text('Hi, Test!')
    end
  end
end