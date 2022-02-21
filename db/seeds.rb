# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


first_user = Users.create!(name: 'Leo', photo: './assets/images/leo.jpg', bio: 'IT Manager and Full-Stack Sofware Developer.')
second_user = Users.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.')
third_user = Users.create(name: 'Lilly', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Poland.')

first_post = Post.create(user_id: first_user, title: 'Hello', text: 'Dies ist mein erster Beitrag.')
second_post = Post.create(user_id: first_user, title: 'Hello 2', text: 'This is my second post.')
third_post = Post.create(user_id: second_user, title: 'Ola', text: 'Este é o primeiro post.')
fourth_post = Post.create(user_id: second_user, title: 'Ola 2', text: 'Este é o segundo post.')
fifth_post = Post.create(user_id: third_user, title: 'Hallo', text: 'Este é o segundo post.')

Comment.create(post: first_post, user_id: second_user, text: 'Hi Leo!' )
Comment.create(post: first_post, user_id: third_user, text: 'Hi Leo!' )
Comment.create(post: second_post, user_id: third_user, text: 'Hi Leo!' )
Comment.create(post: third_post, user_id: first_user, text: 'Hi Tom!' )
Comment.create(post: third_post, user_id: third_user, text: 'Hi Tom!' )
Comment.create(post: fifth_post, user_id: first_user, text: 'Hi Lilly!' )
Comment.create(post: fifth_post, user_id: second_user, text: 'Hi Lilly!' )
