class AddRozkladToCategories < ActiveRecord::Migration[5.1]
  def change
    add_column :categories, :rozklad_id, :integer
  end
end
