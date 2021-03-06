class SessionsController < ApplicationController
  def new
  end

  def create
  	@user = User.find_by_email(params[:session][:email])
  	if @user && @user.authenticate(params[:session][:password])
  		session[:user_id] = @user.id
  		redirect_to tickets_path
  	else
  		flash.now[:danger] = 'Invalid email/password combination'
  		render 'new'	
  	end		
  end

  def destroy
  	session.delete(:user_id)
  	redirect_to root_url
  end
end
