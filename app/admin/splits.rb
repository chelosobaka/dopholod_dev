ActiveAdmin.register Split do
config.filters = false

  menu parent: "Catalog", label: proc{ I18n.t("active_admin.splits") }

  permit_params :title, :price, :refrigerant, :temperature_condition, :voltage, :power_usage,
    :net_weight, :inner_dimensions, :external_dimensions, :packed_sizes, :image_link, :avatar, cell_ids: []

  controller do
    def index
      index! do |format|
        @splits_list = Split.all
        format.html
      end
    end
  end

  index :title => proc{ I18n.t("active_admin.splits") } do
    selectable_column
    column :id
    column "img", :sortable => false do |split|
      if split.avatar.present?
        image_tag("#{split.avatar}", size: "24x24")
      elsif split.image_link.present?
        image_tag("#{split.image_link}", size: "24x24")
      else
        image_tag("MyLogo.png",  size: "24x24")
      end
    end
    column "Название", :title
    column "Цена, руб.", :price
    column "Хладагент", :refrigerant
    column "Температурный режим", :temperature_condition
    column "Напряжение в сети, в/ф/гц", :voltage
    column "Maксимальное энергопотребление, кВт", :power_usage
    column "Габаритные размеры внешнего блока, мм", :external_dimensions
    column "Габаритные размеры внутреннего блока, мм", :inner_dimensions
    column "Вес нетто, кг", :net_weight
    column "Размеры в упаковке, мм", :packed_sizes
    actions
  end

  show do
    attributes_table :title => "#{I18n.t("active_admin.detail")}" do
      row "Аватар", :avatar do
        if split.avatar.present?
          image_tag(split.avatar.url, size: "160x240")
        elsif split.image_link.present?
          image_tag(split.image_link, size: "160x240")
        else
          image_tag("MyLogo.png",  size: "325x250")
        end
      end
      row "id", :id
      row "Цена", :price do
        "#{split.price} руб."
      end
      row "Хладагент", :refrigerant do
        "#{split.refrigerant}"
      end
      row "Температурный режим", :temperature_condition do
        "#{split.temperature_condition}"
      end
      row "Напряжение в сети, в/ф/гц", :voltage do
        "#{split.voltage}"
      end
      row "Maксимальное энергопотребление", :power_usage do
        "#{split.power_usage} кВт"
      end
      row "Габаритные размеры внешнего блока", :external_dimensions do
        "#{split.external_dimensions} мм"
      end
      row "Габаритные размеры внутреннего блока", :inner_dimensions do
        "#{split.inner_dimensions} мм"
      end
      row "Вес нетто", :net_weight do
        "#{split.net_weight} кг"
      end
      row "Размеры в упаковке", :packed_sizes do
        "#{split.packed_sizes} мм"
      end
      row "Подходящие камеры", :cells do
        split.cells.map{ |p| link_to p.title, admin_cell_path(p)}.join(', ').html_safe
      end
      row :created_at
      row :updated_at
    end
  end

  form do |f|
    f.inputs do
      f.input :title, label: 'Название'
      f.input :price, label: 'Цена, руб.'
      f.input :refrigerant, label: 'Хладагент'
      f.input :temperature_condition, label: 'Температурный режим'
      f.input :voltage, label: 'Напряжение в сети, в/ф/гц'
      f.input :power_usage, label: 'Maксимальное энергопотребление, кВт'
      f.input :external_dimensions, label: 'Габаритные размеры внешнего блока, мм'
      f.input :inner_dimensions, label: 'Габаритные размеры внутреннего блока, мм'
      f.input :net_weight, label: 'Вес нетто, кг'
      f.input :packed_sizes, label: 'Размеры в упаковке, мм'
      f.input :image_link, label: 'Ссылка на изображение'
      f.input :avatar, label: 'Аватар'
      f.input :cell_ids, label: 'Камеры', as: :check_boxes, collection: Cell.all
    end
    f.actions
  end

end
