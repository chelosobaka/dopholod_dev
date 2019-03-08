class Product < ApplicationRecord
  actable
  mount_uploader :avatar, AvatarUploader

  after_initialize :set_defaults, unless: :persisted?

  validates :title, presence: true, length: { maximum: 80 }, uniqueness: true
  validates :price, numericality: true

  def translated_actable_type
    I18n.t("#{self.actable_type.downcase}")
  end

  def set_defaults
    self.price ||= '0'
  end
end
