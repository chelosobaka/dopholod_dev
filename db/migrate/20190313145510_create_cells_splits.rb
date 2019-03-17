class CreateCellsSplits < ActiveRecord::Migration[5.2]
  def change
    create_table :cells_splits, id: false do |t|
      t.integer :cell_id
      t.integer :split_id
    end
  end
end
