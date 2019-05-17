class WorkObject < ApplicationRecord
  has_many :work_photos, dependent: :destroy
  accepts_nested_attributes_for :work_photos

  validates :title, presence: true
end
