module ApplicationHelper
  def product_avatar(model)
    if model.avatar.present?
      model.avatar.url
    else
      asset_path("no_photo.png")
    end
  end
end
