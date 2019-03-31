class AddCountToNodes < ActiveRecord::Migration[5.2]
  def change
    add_column :nodes, :count, :integer
  end
end
