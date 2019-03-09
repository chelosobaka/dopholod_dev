module ApplicationHelper
  def product_avatar(model)
    if model.avatar.present?
      model.avatar.url
    elsif model.image_link.present?
      model.image_link
    else
      asset_path("no_photo.png")
    end
  end
end
