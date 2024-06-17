class AddOverallToSake < ActiveRecord::Migration[6.1]
  def change
    add_column :sakes, :overall, :integer
  end
end
