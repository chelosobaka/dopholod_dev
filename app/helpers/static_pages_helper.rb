module StaticPagesHelper
  def photo_for_slider(photo, index)
    if photo.image.present?
      image_tag("#{photo.image}", alt: "#{index+1} slide")
    elsif photo.image_link.present?
      image_tag("#{photo.image_link}", alt: "#{index+1} slide")
    else
      image_tag("no_photo.png", alt: "#{index+1} slide")
    end
  end
end
