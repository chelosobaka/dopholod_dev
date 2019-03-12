class CreateCellsMonoblocks < ActiveRecord::Migration[5.2]
  def change
    create_table :cells_monoblocks, id: false do |t|
      t.integer :cell_id
      t.integer :monoblock_id
    end
  end
end
