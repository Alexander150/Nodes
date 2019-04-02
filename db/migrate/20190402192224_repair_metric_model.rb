class RepairMetricModel < ActiveRecord::Migration[5.2]
  def change
  	remove_column :metrics, :name
  	remove_column :metrics, :metric_type

  	add_column :metrics, :money, :integer
  	add_column :metrics, :hp, :integer
  	
  end
end
