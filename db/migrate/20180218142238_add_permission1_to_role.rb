class AddPermission1ToRole < ActiveRecord::Migration[5.1]
  def change
    add_column :roles, :CreatePosts, :boolean
    add_column :roles, :EditPosts, :boolean
    add_column :roles, :CommentPosts, :boolean
  end
end
