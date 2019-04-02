class RemoveCountFromEdges < ActiveRecord::Migration[5.2]
  def change
  	remove_column :edges, :count
  end
end
