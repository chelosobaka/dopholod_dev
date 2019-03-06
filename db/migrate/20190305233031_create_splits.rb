class CreateSplits < ActiveRecord::Migration[5.2]
  def change
    create_table :splits do |t|
      t.string :refrigerant
      t.string :temperature_condition
      t.string :voltage
      t.float :power_usage
      t.integer :net_weight
      t.string :dimensions
      t.string :packed_sizes
      t.timestamps
    end
  end
end
