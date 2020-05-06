class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
  end

  def new
  end

  def destroy
  end

  private
  # ユーザーがログインしていなければフロントへ
  def current_user_blank?
    if current_user.blank?
      redirect_to root_path
      flash[:alert] = 'ログインを行なってください。'
    end
  end

  def users_params
    params.require(:user).permit(:name,:email)
  end
end
