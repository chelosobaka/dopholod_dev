ActiveAdmin.register Monoblock do
config.filters = false

  menu parent: "Catalog", label: proc{ I18n.t("active_admin.monoblocks") }

  permit_params :title, :price, :refrigerant, :temperature_condition, :voltage, :power_usage,
    :net_weight, :dimensions, :packed_sizes, :image_link, :avatar

  controller do
    def index
      index! do |format|
        @monoblocks_list = Monoblock.all
        format.html
      end
    end
  end

  index :title => proc{ I18n.t("active_admin.monoblocks") } do
    selectable_column
    column :id
    column "img", :sortable => false do |monoblock|
      if monoblock.avatar.present?
        image_tag("#{monoblock.avatar}", size: "24x24")
      elsif monoblock.image_link.present?
        image_tag("#{monoblock.image_link}", size: "24x24")
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
    column "Габаритные размеры, мм", :dimensions
    column "Вес нетто, кг", :net_weight
    column "Размеры в упаковке, мм", :packed_sizes
    actions
  end

  show do
    attributes_table :title => "#{I18n.t("active_admin.detail")}" do
      row "Аватар", :avatar do
        if monoblock.avatar.present?
          image_tag(monoblock.avatar.url, size: "160x240")
        elsif monoblock.image_link.present?
          image_tag(monoblock.image_link, size: "160x240")
        else
          image_tag("MyLogo.png",  size: "325x250")
        end
      end
      row "Цена", :price do
        "#{monoblock.price} руб."
      end
      row "Хладагент", :refrigerant do
        "#{monoblock.refrigerant}"
      end
      row "Температурный режим", :temperature_condition do
        "#{monoblock.temperature_condition}"
      end
      row "Напряжение в сети, в/ф/гц", :voltage do
        "#{monoblock.voltage}"
      end
      row "Maксимальное энергопотребление", :power_usage do
        "#{monoblock.power_usage} кВт"
      end
      row "Габаритные размеры", :dimensions do
        "#{monoblock.dimensions} мм"
      end
      row "Вес нетто", :net_weight do
        "#{monoblock.net_weight} кг"
      end
      row "Размеры в упаковке", :packed_sizes do
        "#{monoblock.packed_sizes} мм"
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
      f.input :dimensions, label: 'Габаритные размеры, мм'
      f.input :net_weight, label: 'Вес нетто, кг'
      f.input :packed_sizes, label: 'Размеры в упаковке, мм'
      f.input :image_link, label: 'Ссылка на изображение'
      f.input :avatar, label: 'Аватар'
    end
    f.actions
  end
end
