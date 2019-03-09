ActiveAdmin.register Product do
  menu parent: "Catalog", label: "Вся продукция"
  actions :all, except: [:show, :edit]
  config.clear_action_items!

  filter :title
  filter :price
  filter :actable_type

  index :title => "Вся продукция" do
    selectable_column
    column :id
    column "img", :sortable => false do |product|
      if product.avatar.present?
        image_tag("#{product.avatar}", size: "24x24")
      elsif product.image_link.present?
        image_tag("#{product.image_link}", size: "24x24")
      else
        image_tag("MyLogo.png", size: "24x24")
      end
    end
    column "Название", :title
    column "Цена, руб.", :price
    column "Тип продукта", :translated_actable_type
    column "Создан", :created_at
    column "Изменён", :updated_at

    column do |product|
      links = []
      links << link_to("Открыть", controller: "#{product.actable_type.downcase}s", action: "show", id: product.actable_id)
      links << link_to("Изменить", controller: "#{product.actable_type.downcase}s", action: "edit", id: product.actable_id)
      links << link_to("Удалить", admin_product_path(product.id), method: :delete)
      links.join(' ').html_safe
    end

  end
end
