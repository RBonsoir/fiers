module ArticleSelectionsHelper
  def selection_link(selection)
    image = selection_image_tag(selection)
    url   = selection_url(selection)

    link_to image, url
  end

  def selection_image_tag(selection)
    image_tag selection.image.picture
  end

  def selection_url(selection)
    if selection.image.product_or_maker_type == 'Product'
      product_path(selection.image.product_or_maker)
    else
      maker_path(selection.image.product_or_maker)
    end
  end
end
