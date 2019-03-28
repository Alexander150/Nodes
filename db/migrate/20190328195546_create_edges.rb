class CreateEdges < ActiveRecord::Migration[5.2]
  def change
    create_table :edges do |t|
      t.integer :node

      t.timestamps
    end
  end
end
