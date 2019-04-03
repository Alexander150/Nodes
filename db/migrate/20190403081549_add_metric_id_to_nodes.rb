class AddMetricIdToNodes < ActiveRecord::Migration[5.2]
  def change
  	add_column :nodes, :metric_id, :integer
  end
end
