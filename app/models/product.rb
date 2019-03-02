class Product < ApplicationRecord
  actable
  mount_uploader :avatar, AvatarUploader

  def translated_actable_type
    I18n.t("#{self.actable_type.downcase}")
  end
  def to_label
    translated_actable_type
  end

  # method used for displaying model names in ActiveAdmin
  def display_name
    translated_actable_type
  end
end
