class CreateSakes < ActiveRecord::Migration[6.1]
  def change
    create_table :sakes do |t|
      t.string :shop_name
      t.string :area
      t.integer :cost
      t.string :genre
      t.time :time
      t.text :text

      t.timestamps
    end
  end
end
