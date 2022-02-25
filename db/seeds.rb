# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([
	{ name: 'Leo', photo: 'https://media.gettyimages.com/photos/portrait-of-smiling-young-man-with-backpack-in-the-city-on-the-go-picture-id1186932544', bio: "I'm a Professional Tech Mentor for juniors.", PostsCounter: 0},
	{ name: 'Leonardo', photo: 'https://media.gettyimages.com/photos/portrait-of-smiling-young-man-with-backpack-in-the-city-on-the-go-picture-id1186932544', bio: "I'm a Professional Tech Mentor for juniors.", PostsCounter: 0},
	{ name: 'Leo de Andrade', photo: 'https://media.gettyimages.com/photos/portrait-of-smiling-young-man-with-backpack-in-the-city-on-the-go-picture-id1186932544', bio: "I'm a Professional Tech Mentor for juniors.", PostsCounter: 0},
	{ name: 'Leonardo de Andrade', photo: 'https://media.gettyimages.com/photos/portrait-of-smiling-young-man-with-backpack-in-the-city-on-the-go-picture-id1186932544', bio: "I'm a Professional Tech Mentor for juniors.", PostsCounter: 0},
	{ name: 'Leonardo Andrade', photo: 'https://media.gettyimages.com/photos/portrait-of-smiling-young-man-with-backpack-in-the-city-on-the-go-picture-id1186932544', bio: "I'm a Professional Tech Mentor for juniors.", PostsCounter: 0}
	])
  
  all_users = User.all
  
  all_users.each do |user|
	for j in 1..5 do
	  Post.create(title: "Post number: #{j}", text: "I'm writing this new post number: #{j}", CommentsCounter: 0, LikesCounter: 0, user_id: user.id)
	end
  end
  
  all_posts = Post.all
  
  all_posts.each do |post|
	for j in 1..3 do
	  Like.create(user_id: all_users[j].id, post_id: post.id)
	  Comment.create(user_id: all_users[j].id, post_id: post.id, text: "I'm #{all_users[j].name} and I'm adding some comments here.")
	end
  end