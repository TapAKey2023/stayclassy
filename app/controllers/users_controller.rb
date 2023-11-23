class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]

  # def create
  #   @user = User.new(user_params)
  #   if @user.save
  #     redirect_to user_path(@user)
  #   else
  #     render :new, status: :unprocessable_entity
  #   end
  # end

  # def new
  #   @user = User.new
  # end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def show
  end

  # def destroy
  #   @user.destroy
  #   redirect_to users_path, status: :see_other
  # end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :photo_url, :bio)
  end
end
