
# Blog App

A **Blog app** similar classic blog website. With fully functional website that show the list of posts and empower readers to interact with them by adding comments and liking posts.
 - **User**
 - **Post**
 - **Comment**
 - **Like** 


</br>
 <div align="center">
    <img alt="gif" src="./public/blog_app_erd.png" width=50% />
    <p>Entity Relationship Diagram (ERD) of Blog App project</p>
</div>

## Getting Started
To run the project locally, copy up and running follow these simple example steps :

 - First of all make sure you have both `Ruby` & `Rails` installed in your machine
 (else You can install `Rails` just with this simple command  ```gem install rails```)
 - clone the project with the following command line : 
```
$ git clone git@github.com:Hamzaoutdoors/BLog_app.git
```
 - Then go to the right folder 
```
$ cd Blog_app
```
```
$ bundle
```
and run to install npm package
```
$ npm install
```

make sure the database is up and running.
```
$ rails db:create
```
When you will add migration file then, you can add command like
```
$ rails db:migrate
```
Run this command line to add some dummy data
```
$ rails db:seed
```

 - Finaly run `rails s` and visit http://localhost:3000/  in your browser!

 ## Run tests :

 To run Request specs locally you need just to run this following command in your terminal :

 ```
 $ bundle exec rspec
 ```


## Built With

 - Ruby on RAils  <img src="https://cdn.emojidex.com/emoji/seal/Ruby.png" width=15px>
 - PostgreSQL <img src="https://user-images.githubusercontent.com/80895497/142954032-f7072df9-3586-48f9-a9e0-7fdd284eb833.png" width=15px>
 
</br>

## Authors

👤 **Ellaouzi Hamza**

- GitHub: [hamzaoutdoors](https://github.com/Leonardoeng13)
- LinkedIn : [Hamza Ellaouzi](https://www.linkedin.com/in/leonardodeandrade/)
- Twitter: [Hamza Ellaouzi](https://twitter.com/andrede_leo)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/leonardoeng13/rails_blog/issues).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- N/A


## 📝 License


<!-- rails generate migration CreatePosts author_id:bigint title:string text:text comments_counter:integer likes_counter:integer -->

<!-- rails generate migration CreateUsers name:string photo:string bio:text posts_counter:integer  -->

<!-- rails generate migration CreateCommetns author_id:bigint post_id:bigint text:text  -->

<!-- rails generate migration CreateLikes author_id:bigint post_id:bigint-->

<!-- rails db:migrate:redo STEP=3 -->