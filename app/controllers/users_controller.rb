class UsersController < ApplicationController
  before_action :find_me, only: [:show, :edit, :update, :destroy]
  def index
    @users =User.all
  end

  def show

  end

  def new
    @user = User.new
  end

  def edit

  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end

  def update
    @user.update(user_params)
    @user.save
    redirect_to @user
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end

  private
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation, :role)
    end

    def find_me
        @user = User.find_by(id: params[:id])
    end

end