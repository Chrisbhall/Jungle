class Admin::CategoriesController < ApplicationController
    http_basic_authenticate_with name: ENV['USERNAME'], password: ENV['PASSWORD']
  
    def index
      @categories = Category.order(id: :desc).all
    end
  
    def new
      @Category = Category.new
    end
  
    def create
      @Category = Category.new(category_params)
  
      if @Category.save
        redirect_to [:admin, :categories], notice: 'Category created!'
      else
        render :new
      end
    end
  
    def destroy
      @Category = Category.find params[:id]
      @Category.destroy
      redirect_to [:admin, :categories], notice: 'Category deleted!'
    end
  
    private
  
    def category_params
      params.require(:category).permit(
        :name,
        :created_at,
        :updated_at
      )
    end
  
end
