require 'rails_helper'

RSpec.feature "ProductDetails", type: :feature, js: true do
  before :each do
    @category = Category.create! name: 'Apparel'

    10.times do |n|
      @category.products.create!(
  name:  Faker::Hipster.sentence(3),
  description: Faker::Hipster.paragraph(4),
  image: open_asset('apparel1.jpg'),
  quantity: 10,
  price: 64.99
)

    end
  end

  scenario "They see all products" do
    visit root_path

    # commented out b/c it's for debugging only
    
    expect(page).to have_css 'article.product', count: 10
  end
  scenario "They see a specific product" do
    
    visit("/products/7")

    # commented out b/c it's for debugging only
    # save_and_open_screenshot
    save_screenshot

    expect(page).to have_css '.product-detail'
  end
end
