class RepairMetric < ActiveRecord::Migration[5.2]
  def change
  	remove_column :metrics, :money
  	remove_column :metrics, :hp

  	add_column :metrics, :name, :string
  end
end
