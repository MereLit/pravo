class AddSocialToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :com, :integer, default: 0
    add_column :posts, :visit, :integer, default: 0
  end
end
