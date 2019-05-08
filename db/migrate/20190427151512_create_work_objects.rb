class CreateWorkObjects < ActiveRecord::Migration[5.2]
  def change
    create_table :work_objects do |t|
      t.string :title
      t.timestamps
    end
  end
end
