require 'rails_helper'

RSpec.describe 'posts/edit', type: :view do
  before(:each) do
    @post = assign(:post, Post.create!(
                            user: nil,
                            title: 'MyString',
                            text: 'MyText',
                            CommentsCounter: 1,
                            LikesCounter: 1
                          ))
  end

  it 'renders the edit post form' do
    render

    assert_select 'form[action=?][method=?]', post_path(@post), 'post' do
      assert_select 'input[name=?]', 'post[user_id]'

      assert_select 'input[name=?]', 'post[title]'

      assert_select 'textarea[name=?]', 'post[text]'

      assert_select 'input[name=?]', 'post[CommentsCounter]'

      assert_select 'input[name=?]', 'post[LikesCounter]'
    end
  end
end
