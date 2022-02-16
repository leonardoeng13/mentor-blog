class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.text :text
      t.integer :CommentsCounter
      t.string :LikesCounter
      t.string :integer

      t.timestamps
    end
  end
end
