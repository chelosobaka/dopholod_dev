class WorkPhoto < ApplicationRecord
  belongs_to :work_object
  mount_uploader :image, AvatarUploader
end
