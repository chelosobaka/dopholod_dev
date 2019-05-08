module ActiveAdmin
  module ViewHelper
    def work_object_title(work_photo)
    work_object = WorkObject.find(work_photo.work_object_id)
    work_object.title
  end
  end
end
