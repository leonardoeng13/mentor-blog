class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :user do |t|
      t.string :name
      t.string :photo
      t.text :bio
      t.integer :PostsCounter

      t.timestamps
    end
  end
end
