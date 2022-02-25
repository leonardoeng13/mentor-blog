require 'rails_helper'

RSpec.describe 'users/new', type: :view do
  before(:each) do
    assign(:user, User.new(
                    name: 'MyString',
                    photo: 'MyString',
                    bio: 'MyText',
                    PostsCounter: 1
                  ))
  end

  it 'renders new user form' do
    render

    assert_select 'form[action=?][method=?]', users_path, 'post' do
      assert_select 'input[name=?]', 'user[name]'

      assert_select 'input[name=?]', 'user[photo]'

      assert_select 'textarea[name=?]', 'user[bio]'

      assert_select 'input[name=?]', 'user[PostsCounter]'
    end
  end
end
