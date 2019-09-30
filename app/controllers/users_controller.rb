class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find_by id: params[:id]
    return @user if @user
    render file: "public/404.html", status: :user_not_found
  end

  def create
    @user = User.new user_params
    if @user.save
      flash[:success] = t ".flash.success"
      redirect_to root_url
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:fullname, :age, :birth_date, :email,
                                 :password, :password_confirmation)
  end
end
