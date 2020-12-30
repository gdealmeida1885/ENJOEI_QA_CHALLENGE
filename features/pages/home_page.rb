class HomePage < SitePrism::Page
  set_url '/'

  element :section_footer, '.c-footer'
  element :button_sign_in, '.c-header__link'
  element :section_discount, '.o-container', text: 'montão de desconto'
  element :intervention_modal, '.c-modal__content'

  def page_loaded?
    has_section_footer?
  end

  def select_random_discount_page
    within section_discount do
      discount_options = all('.c-content-widget__item')
      discount_options[rand(discount_options.size)]
    end
  end

  def visit_random_discount_page(page)
    page.click
  end

  def close_intervention_modal
    within intervention_modal do
      find('.c-modal__close').click
    end
  end
end
