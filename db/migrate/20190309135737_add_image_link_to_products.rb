class AddImageLinkToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :image_link, :string
  end
end
