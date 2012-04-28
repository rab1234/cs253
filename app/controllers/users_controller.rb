class UsersController < ApplicationController
  def signup
    @user = User.new
    @user.username = params[:username]
    @user.username = params[:pw]
    @user.username = params[:pw_confirmation]
    @user.username = params[:email]
    render "welcome" unless @user.username.nil?
  end

  def welcome
  end
end
