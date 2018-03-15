class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.datetime :edate
      t.datetime :etime
      t.string :venue
      t.string :venume_det
      t.string :etupe
      t.string :ecost
      t.string :einfo

      t.timestamps
    end
  end
end
