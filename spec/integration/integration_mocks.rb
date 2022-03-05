require 'user'

module Mocks
  def create_users
    names = [
      { name: 'Duck', bio: "I'm the First Duck", PostsCounter: 5, email: 'duck@duck.com', admin: false },
      { name: 'Duck2', bio: "I'm the Second Duck", PostsCounter: 5, email: 'duck2@duck.com', admin: false }
    ]
    (0..1).each do |i|
      user = User.new(names[i])
      user.password = 'admin123'
      user.password_confirmation = 'admin123'
      user.skip_confirmation!
      user.save!
    end
    User.all
  end

  def create_posts(users)
    users.each do |user|
      (1..5).each do |j|
        Post.create(title: "Post # #{j}", text: "This is post number: #{j}", CommentsCounter: 0,
                    LikesCounter: 0, user_id: user.id)
      end
    end
    Post.all
  end

  def create_likes_comments(users, posts)
    posts.each do |post|
      (0..1).each do |m|
        Like.create(user_id: users[m].id, post_id: post.id)
        Comment.create(user_id: users[m].id, post_id: post.id,
                       text: "I'm #{users[m].name} and I'm commenting nothing here.")
      end
    end
  end
end
