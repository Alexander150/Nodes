class CreateActions < ActiveRecord::Migration[5.2]
  def change
    create_table :actions do |t|
      t.string :name
      t.boolean :action_type

      t.timestamps
    end
  end
end
