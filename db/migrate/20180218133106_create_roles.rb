class CreateRoles < ActiveRecord::Migration[5.1]
  def change
    create_table :roles do |t|
      t.string :name
      t.boolean :CreatePosts
      t.boolean :EditPosts
      t.boolean :CommentPosts
      t.timestamps
    end
  end
end
