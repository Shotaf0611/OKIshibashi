class AddLevelToSake < ActiveRecord::Migration[6.1]
  def change
    add_column :sakes, :level, :integer
  end
end
