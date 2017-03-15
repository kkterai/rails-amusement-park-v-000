class UsersController < ApplicationController

before_action :authenticate_user, :except => [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render 'new'
    end
  end


def show
  @user = User.find_by(id: params[:id])
  if @user != current_user
    redirect_to root_path
  end
end

def edit
  @user = User.find_by(id: params[:id])
  if @user != current_user
    redirect_to user_path
  end
end

def update
  @user = User.find_by(id: params[:id])
  @user.update(user_params)
  if @user.save
    redirect_to user_path(@user)
  else
    render 'edit'
  end
end


private

  def user_params
    params.require(:user).permit(:name, :password, :height, :nausea, :happiness, :tickets,:admin)
  end
end
