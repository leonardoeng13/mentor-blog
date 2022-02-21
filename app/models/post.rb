class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :likes

  def update_comments_counter
    commentscounter = Comment.where(post_id: id).count
    update(CommentsCounter: commentscounter)
  end

  def update_likes_counter
    likescounter = Like.where(post_id: id).count
    update(LikesCounter: likescounter)
  end

  def most_recent_comments
    comments.order(created_at: :desc).limit(5)
  end
end
