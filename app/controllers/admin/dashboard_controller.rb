class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: ENV['USERNAME'], password: ENV['PASSWORD']
  def show
    @product_Num = Product.count_by_sql "SELECT COUNT(*) FROM products"
    @category_Num = Category.count_by_sql "SELECT COUNT(*) FROM categories"
    
  end
end
