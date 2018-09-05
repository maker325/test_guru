class SessionsController < ApplicationController
  skip_before_action :authenticate_user!
  def new; end

  def create
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to cookies.delete(:path) || root_path
    else
      flash.now[:alert] = 'Your email or password is incorrect'
      render :new
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to signin_url
  end
end
