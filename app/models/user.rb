class User < ApplicationRecord
  has_many :posts
  has_many :comments, class_name: 'Comment'
  has_many :likes, class_name: 'Like'

  def most_recent_posts
    posts = Post.all
    posts.order(created_at: :desc).limit(3)
  end

  def update_posts_counter
    postscounter = Post.where(user_id: id).count
    update(PostsCounter: postscounter)
  end
end
