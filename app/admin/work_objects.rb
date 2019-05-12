ActiveAdmin.register WorkObject do
  config.filters = false
  permit_params :title, work_photos_attributes: [:id, :image_link, :image, :_destroy]
  menu parent: "gallery", label: proc{ I18n.t("active_admin.work_object") }

  controller do
    def index
      index! do |format|
        @work_object_list = WorkObject.all
        format.html
      end
    end
  end

  show do
    div class: 'row' do
      work_object.work_photos.each do |photo|
        div class: 'col-4' do
          div class: 'photo' do
            if photo.image.present?
              image_tag("#{photo.image}", width: "100%")
            elsif photo.image_link.present?
              image_tag("#{photo.image_link}", width: "100%")
            else
              image_tag("no_photo.png", width: "100%")
            end
          end
        end
      end
    end
  end

  form do |f|
    f.inputs do
      f.input :title
    end
    f.inputs do
      f.has_many :work_photos, :allow_destroy => true, :new_record => true do |photo|
        photo.input :image_link
        photo.input :image
      end
    end
    f.actions
  end

end
