class AddTitleToEvent < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :etitle, :string
  end
end
