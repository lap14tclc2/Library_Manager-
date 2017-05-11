class BooksController < ApplicationController
    before_action :logged_in_user, only: [:edit, :update, :destroy]
    before_action :admin_user,     only: [:edit, :destroy]

  def new
    @page_title = 'Add New Book'
    @book = Book.new
    @category = Category.new
    @author = Author.new
    @publisher = Publisher.new
  end

  def create
    @book = Book.new(book_params)
    @book.save
    flash[:notice] = 'Book Added!'
    redirect_to books_path
  end

  def update
    @book = Book.find(params[:id])
    @book.update(book_params)
    flash[:notice] = 'Book Updated!'
    redirect_to books_path
  end

  def edit
    @book = Book.find(params[:id])
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    flash[:alert] = 'Book Removed!'
    redirect_to books_path
  end

  def index
    @books = Book.all
    @categories = Category.all
  end

  def show
    @book = Book.find(params[:id])
    @categories = Category.all
    @users = User.all

    if @book.reviews.blank?
        @average_review = 0
    else
        @average_review = @book.reviews.average(:rating).round(2)
    end
    
  end

  private
    def book_params
      # suggest breaking this onto multiple lines for readability (not exceeding
      # 80 characters)
      # params.require(:book).permit( :title, :category_id, :author_id,
      #                               :publisher_id, :isbn, :price, :buy, :format,
      #                               :excerpt, :pages, :year, :coverpath)

      params.require(:book).permit(:title, :category_id, :author_id, :publisher_id, :isbn, :price, :buy, :format, :excerpt, :pages, :year, :coverpath)
    end

    # suggest moving this (and other methods below) to the application controller so
    # they can be shared # between all controllers where you need the user to be
    # logged in # right now it's duplicated in users_controller
    def logged_in_user
      unless logged_in?
        flash[:alert] = 'Please log in.'
        redirect_to login_url
      end
    end

    # this method isn't used here!
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end

    def admin_user
     redirect_to(root_url) unless current_user.admin?
    end
end