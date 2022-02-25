require 'rails_helper'

RSpec.describe 'posts/index', type: :view do
  before(:each) do
    assign(:posts, [
             Post.create!(
               user: nil,
               title: 'Title',
               text: 'MyText',
               CommentsCounter: 2,
               LikesCounter: 3
             ),
             Post.create!(
               user: nil,
               title: 'Title',
               text: 'MyText',
               CommentsCounter: 2,
               LikesCounter: 3
             )
           ])
  end

  it 'renders a list of posts' do
    render
    assert_select 'tr>td', text: nil.to_s, count: 2
    assert_select 'tr>td', text: 'Title'.to_s, count: 2
    assert_select 'tr>td', text: 'MyText'.to_s, count: 2
    assert_select 'tr>td', text: 2.to_s, count: 2
    assert_select 'tr>td', text: 3.to_s, count: 2
  end
end
