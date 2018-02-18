class AddPermission1ToRole < ActiveRecord::Migration[5.1]
  def change
    add_column :roles, :CreateArticle, :boolean
    add_column :roles, :EditArticle, :boolean
    add_column :roles, :CommentArticle, :boolean
  end
end
