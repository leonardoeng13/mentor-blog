require 'rails_helper'

RSpec.describe 'posts/show', type: :view do
  before(:each) do
    @post = assign(:post, Post.create!(
                            user: nil,
                            title: 'Title',
                            text: 'MyText',
                            CommentsCounter: 2,
                            LikesCounter: 3
                          ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
