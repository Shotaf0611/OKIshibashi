class AddCategoryToSakes < ActiveRecord::Migration[6.1]
  def change
    add_column :sakes, :category, :string
  end
end
