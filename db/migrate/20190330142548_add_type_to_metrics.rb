class AddTypeToMetrics < ActiveRecord::Migration[5.2]
  def change
    add_column :metrics, :metric_type, :boolean
  end
end
