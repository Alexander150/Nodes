class AddCountToEdges < ActiveRecord::Migration[5.2]
  def change
    add_column :edges, :count, :integer
  end
end
