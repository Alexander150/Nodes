class AddCountToMetric < ActiveRecord::Migration[5.2]
  def change
  	add_column :metrics, :count, :integer
  end
end
