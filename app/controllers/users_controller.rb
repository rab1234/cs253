class UsersController < ApplicationController

  def users
    render "signup"
  end

  def signup
    @user = User.new
    @user.username = params[:username]
    @user.pw = params[:pw]
    @user.pw_confirmation = params[:pw_confirmation]
    @user.email = params[:email]
    if @user.valid?
      #@user.save
      render "welcome"
    else
      flash[:username] = @user.errors[:username].inspect
      flash[:pw] = @user.errors[:pw].inspect
      flash[:pw_conf] = @user.errors[:pw_confirmation].inspect
      flash[:email] = @user.errors[:email].inspect
      render "signup"
    end
  end

  def welcome
  end
end
