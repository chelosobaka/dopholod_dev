ActiveAdmin.register Cell do
  menu parent: "Catalog", label: proc{ I18n.t("active_admin.cells") }
  permit_params :title, :price, :temperature_range, :space,
  :dimensions, :net_weight, :packed_sizes

  filter :cell, collection: proc { Cell.limit(10) }

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
    column I18n.t("active_admin.product.title"), :title
    column "#{I18n.t("active_admin.product.price")}, руб.", :price
    column I18n.t("active_admin.product.temperature_range"), :temperature_range
    column "#{I18n.t("active_admin.product.space")}, м3", :space
    column "#{I18n.t("active_admin.product.dimensions")}, мм", :dimensions
    column "#{I18n.t("active_admin.product.net_weight")}, кг", :net_weight
    column "#{I18n.t("active_admin.product.packed_sizes")}, мм", :packed_sizes
    actions
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :price
      f.input :temperature_range
      f.input :space
      f.input :dimensions
      f.input :net_weight
      f.input :packed_sizes
    end
    f.actions
  end
end
