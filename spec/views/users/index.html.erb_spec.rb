require 'rails_helper'

RSpec.describe 'users/index', type: :view do
  before(:each) do
    assign(:users, [
             User.create!(
               name: 'Name',
               photo: 'Photo',
               bio: 'MyText',
               PostsCounter: 2
             ),
             User.create!(
               name: 'Name',
               photo: 'Photo',
               bio: 'MyText',
               PostsCounter: 2
             )
           ])
  end

  it 'renders a list of users' do
    render
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
    assert_select 'tr>td', text: 'Photo'.to_s, count: 2
    assert_select 'tr>td', text: 'MyText'.to_s, count: 2
    assert_select 'tr>td', text: 2.to_s, count: 2
  end
end
