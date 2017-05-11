class CategoriesController < ApplicationController

  def new
    @pate_title = 'Add New Category'
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    if @category.save
     flash[:notice] = 'Category Created!'
     redirect_to categories_path
    else
      render 'new'
    end

  end

  def update
    # suggest using the if ... else render form
    # approach here to ensure users get an error message if this fails to
    # update due to validations (like you did in create)
    @category = Category.find(params[:id])
    @category.update(category_params)
    flash[:notice] = 'Category Updated!'
    redirect_to categories_path
  end

  def edit
    @category = Category.find(params[:id])
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    flash[:alert] = 'Category Removed!'
    redirect_to categories_path
  end

  def index
    @page_title = 'Manage Categories'
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @categories = Category.all
    @books = @category.books
  end
  
  private
    def category_params
      params.require(:category).permit(:name)
    end

end
