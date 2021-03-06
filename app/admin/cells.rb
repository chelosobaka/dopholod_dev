ActiveAdmin.register Cell do
  config.filters = false

  menu parent: "Catalog", label: proc{ I18n.t("active_admin.cells") }

  permit_params :title, :price, :temperature_range, :space,
  :dimensions, :net_weight, :packed_sizes, :image_link, :avatar, monoblock_ids: [], split_ids: []

  controller do
    def index
      index! do |format|
        @cells_list = Cell.all
        format.html
      end
    end
  end

  index :title => proc{ I18n.t("active_admin.cells") } do
    selectable_column
    column :id
    column "img", :sortable => false do |cell|
      if cell.avatar.present?
        image_tag("#{cell.avatar}", size: "24x24")
      elsif cell.image_link.present?
        image_tag("#{cell.image_link}", size: "24x24")
      else
        image_tag("MyLogo.png", size: "24x24")
      end
    end
    column "Название", :title
    column "Цена, руб.", :price
    column "Диапазон температуры окружающего воздуха", :temperature_range
    column "Объём, м3", :space
    column "Габаритные размеры, мм", :dimensions
    column "Вес нетто, кг", :net_weight
    column "Размеры в упаковке, мм", :packed_sizes
    actions
  end

  show do
    attributes_table :title => "#{I18n.t("active_admin.detail")}" do
      row "Аватар", :avatar do
        if cell.avatar.present?
          image_tag(cell.avatar.url, size: "160x240")
        elsif cell.image_link.present?
          image_tag(cell.image_link, size: "160x240")
        else
          image_tag("MyLogo.png",  size: "325x250")
        end
      end
      row "id", :id
      row "Цена", :price do
        "#{cell.price} руб."
      end
      row "Диапазон температуры окружающего воздуха", :temperature_range do
        "#{cell.temperature_range}"
      end
      row "Объём", :space do
        "#{cell.space} м3"
      end
      row "Габаритные размеры", :dimensions do
        "#{cell.dimensions} мм"
      end
      row "Вес нетто", :net_weight do
        "#{cell.net_weight} кг"
      end
      row "Размеры в упаковке", :packed_sizes do
        "#{cell.packed_sizes} мм"
      end
      row "Ссылка на изображение", :image_link do
        "#{cell.image_link}"
      end
      row "Подходящие моноблоки", :monoblocks do
        cell.monoblocks.map{ |p| link_to p.title, admin_monoblock_path(p)}.join(', ').html_safe
      end

      row "Подходящие Сплит-системы", :splits do
        cell.splits.map{ |p| link_to p.title, admin_split_path(p)}.join(', ').html_safe
      end
      row :created_at
      row :updated_at
    end
  end

  form do |f|
    f.inputs do
      f.input :title, label: 'Название'
      f.input :price, label: 'Цена, руб.'
      f.input :temperature_range, label: 'Диапазон температуры окружающего воздуха'
      f.input :space, label: 'Объём, м3'
      f.input :dimensions, label: 'Габаритные размеры, мм'
      f.input :net_weight, label: 'Вес нетто, кг'
      f.input :packed_sizes, label: 'Размеры в упаковке, мм'
      f.input :image_link, label: 'Ссылка на изображение'
      f.input :avatar, label: 'Аватар'
      f.input :monoblock_ids, label: 'Моноблоки', as: :check_boxes, collection: Monoblock.all
      f.input :split_ids, label: 'Сплит-системы', as: :check_boxes, collection: Split.all
    end
    f.actions
  end
end
