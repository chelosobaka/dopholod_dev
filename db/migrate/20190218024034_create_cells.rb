class CreateCells < ActiveRecord::Migration[5.2]
  def change
    create_table :cells do |t|
      t.string :temperature_range
      t.float :space
      t.string :dimensions
      t.integer :net_weight
      t.string :packed_sizes
      t.timestamps
    end
  end
end
