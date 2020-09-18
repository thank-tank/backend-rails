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
    @user = User.new(user_params)
    if @user.save
      log_in(@user)
      flash[:success] = "Welcome to ThankTank!"
      redirect_to user_url(@user)
    else
      render 'new'
    end
  end

  def destroy
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
