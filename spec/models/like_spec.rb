require 'rails_helper'

RSpec.describe Like, type: :model do
  before :each do
    User.create(id: 1, name: 'Leo', PostsCounter: 0)
  end

  before :each do
    Post.create(id: 1, user_id: 1, title: 'Anything', text: 'Lorem ipsum', CommentsCounter: 0, LikesCounter: 0)
  end
  subject do
    Like.new(user_id: 1, post_id: 1)
  end
  before { subject.save }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end
end
