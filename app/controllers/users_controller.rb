class UsersController < ApplicationController
  before_action :logged_in_user, only: [:edit, :update, :update, :destroy]
  before_action :correct_user,   only: [:edit, :update]
  before_action :admin_user,     only: :destroy

  def new
    @page_title = 'Add New User'
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
       log_in @user
       flash[:notice] = 'Welcome To The BookStore!'
       redirect_to @user
    else
       render 'new'
    end
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:notice] = 'Profile updated!'
      redirect_to @user
    else
      render 'edit'
    end
  end

   def edit
    @user = User.find(params[:id])
   end

  def show
    @page_title = 'Profile'
    @user = User.find(params[:id])
    @categories = Category.all
  end

  def index
    @page_title = 'All Users'
    @users = User.paginate(page: params[:page])
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:notice] = "User deleted"
    redirect_to users_url
  end

  def logged_in_user
      unless logged_in?
        flash[:alert] = 'Please log in.'
        redirect_to login_url
      end
  end
  
  def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
  end

  def admin_user
      redirect_to(root_url) unless current_user.admin?
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end


end
