class CreatePostcomments < ActiveRecord::Migration[5.1]
  def change
    create_table :postcomments do |t|
      t.integer :user_id
      t.integer :post_id
      t.string :text

      t.timestamps
    end
  end
end
