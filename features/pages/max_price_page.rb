class MaxPricePage < SitePrism::Page
  element :section_footer, '.c-footer__institutional'
  element :button_filter, 'button[data-filter=price]'
  element :div_shelf, '.c-product-feed__list'

  def page_loaded?
    has_section_footer?
  end
end
