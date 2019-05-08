class CreateWorkPhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :work_photos do |t|
      t.string :image_link
      t.string :image
      t.belongs_to :work_object, index: true
      t.timestamps
    end
  end
end
