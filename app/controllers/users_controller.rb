class UsersController < ActionController::Base
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to "/"
    else
      render "new"
    end
  end
end
