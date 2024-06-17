class AddImageToSakes < ActiveRecord::Migration[6.1]
  def change
    add_column :sakes, :image, :string
  end
end
