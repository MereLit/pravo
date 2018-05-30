class CreatePredmets < ActiveRecord::Migration[5.1]
  def change
    create_table :predmets do |t|
      t.integer :rozklad_id
      t.string :name

      t.timestamps
    end
  end
end
