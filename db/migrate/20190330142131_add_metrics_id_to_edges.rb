class AddMetricsIdToEdges < ActiveRecord::Migration[5.2]
  def change
    add_column :edges, :metric_id, :integer
  end
end
