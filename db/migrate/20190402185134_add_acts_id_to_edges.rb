class AddActsIdToEdges < ActiveRecord::Migration[5.2]
  def change
  	add_column :edges, :act_id, :integer
  end
end
