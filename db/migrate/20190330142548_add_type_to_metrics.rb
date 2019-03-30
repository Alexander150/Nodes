class AddTypeToMetrics < ActiveRecord::Migration[5.2]
  def change
    add_column :metrics, :type, :bool
  end
end
