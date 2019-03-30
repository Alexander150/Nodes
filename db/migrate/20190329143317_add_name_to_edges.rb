class AddNameToEdges < ActiveRecord::Migration[5.2]
  def change
    add_column :edges, :name, :string
  end
end
