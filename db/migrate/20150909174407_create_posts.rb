class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :author
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
# telling the app what colums should be in the post table and the type
# rake db: migrate
