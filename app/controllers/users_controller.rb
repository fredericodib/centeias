class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:new, :show, :create, :update, :edit, :destroy]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path
    else
      redirect_to new_user_path
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    if user.update(user_params)
      redirect_to root_path
    else
      redirect_to edit_user_path(user)
    end
  end

	private
	def user_params
		params.require(:user).permit(:name, :email, :password).delete_if {|key, value| value.blank? }
	end

end
