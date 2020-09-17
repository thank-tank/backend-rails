class UsersController < ApplicationController
  def show
    if (params[:id].nil?)
      @user = User.find_by(name:"Ben")
    else
      @user = User.find(params[:id])
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      # handle successful save
    else
      render 'new'
    end
  end
end
