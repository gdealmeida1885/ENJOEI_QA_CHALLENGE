Given('I am on home page') do
  @home = HomePage.new
  @home.load
  @home.close_intervention_modal
  @home.page_loaded?
end

Given('I choose some maximum product price') do
  @selected_discount = @home.select_random_discount_page
end

When('I click in this price category') do
  @home.visit_random_discount_page(@selected_discount)
end

# Even tough some people prefer doing the assertions on the class
# I believe that the assertions aren't a responsabilitie of the class/object, but of the test instead
# Also, when given the option, I always prefere to restrain Capybara's search to a particular element
# Therefore I'm always using the "within" method, wich on the long term, can save a couple of minutes

Then('I should only see products no more expensive than the choosen price') do
  @mp_page = MaxPricePage.new
  @mp_page.page_loaded?

  products_price = within(@mp_page.div_shelf) { all('.c-product-card__price-sale') }

  products_price.each do |p|
    # Since the price are strings, I have to break the strings and convert the price to floats
    # It seems a bit confusing at first, but it's not.
    # Also, I could have gotten the price while choosing the random price
    # But instead, I prefered to check if the filter is showing the correct price :-)
    expect(p.text.split(' ')[1].to_f).to be <= @mp_page.button_filter.text.split(' ')[2].to_f
  end
end
