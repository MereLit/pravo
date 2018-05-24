class AddCategoryToPredmets < ActiveRecord::Migration[5.1]
  def change
    add_column :predmets, :category_id, :integer
  end
end
