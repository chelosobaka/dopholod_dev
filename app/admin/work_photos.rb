ActiveAdmin.register WorkPhoto do
  menu parent: "gallery", label: proc{ I18n.t("active_admin.work_photo") }
  permit_params :image_link, :image, :work_object_id

  index :title => proc{ I18n.t("active_admin.work_photo") } do
    selectable_column
    column :id
    column "Фото", :sortable => false do |work_photo|
      if work_photo.image.present?
        image_tag("#{work_photo.image}", height: "100px")
      else
        image_tag("no_photo.png", height: "100px")
      end
    end
    column "Ссылка на фото", :sortable => false do |work_photo|
      if work_photo.image_link.present?
        image_tag("#{work_photo.image_link}", height: "100px")
      else
        image_tag("no_photo.png", height: "100px")
      end
    end
    column "Рабочий объект" do |work_photo|
      link_to "#{work_object_title(work_photo)}", admin_work_object_path(work_photo.work_object_id)
    end
    actions
  end


  show :title => proc{"Рабочий объект: #{work_object_title(@work_photo)}"} do
    attributes_table :title => "#{I18n.t("active_admin.detail")}" do
      row "Фото", :image do
        if work_photo.image.present?
          image_tag(work_photo.image.url, height: "300px")
        else
          image_tag("no_photo.png",  height: "300px")
        end
      end
      row "Ссылка на фото", :image do
        if work_photo.image_link.present?
          image_tag(work_photo.image_link, height: "300px")
        else
          image_tag("no_photo.png",  height: "300px")
        end
      end
    end
  end


end
