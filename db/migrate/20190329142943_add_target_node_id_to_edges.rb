class AddTargetNodeIdToEdges < ActiveRecord::Migration[5.2]
  def change
    add_column :edges, :target_node_id, :integer
  end
end
