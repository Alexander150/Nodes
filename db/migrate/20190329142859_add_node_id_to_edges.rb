class AddNodeIdToEdges < ActiveRecord::Migration[5.2]
  def change
    add_column :edges, :node_id, :integer
  end
end
