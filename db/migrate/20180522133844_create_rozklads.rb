class CreateRozklads < ActiveRecord::Migration[5.1]
  def change
    create_table :rozklads do |t|
      t.string :title

      t.timestamps
    end
  end
end
