class CreateNodes < ActiveRecord::Migration[5.2]
  def change
    create_table :nodes do |t|
      t.string :name
      t.text :body
      t.references :edge, foreign_key: true

      t.timestamps
    end
  end
end
