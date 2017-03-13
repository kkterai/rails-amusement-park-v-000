class SessionsController < ApplicationController

  def sign_in
    @user = User.new
  end

  def create
    @user = User.find_by(name: params[:user][:name])
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      @user.admin = true
      redirect_to user_path(@user)
    else
      render 'sign_in'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end
end
