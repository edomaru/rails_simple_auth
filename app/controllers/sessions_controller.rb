class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by(email: params[:email])

  	if user && user.authenticate(params[:password])
  		session[:user_id] = user.id

  		flash[:success] = "Welcome to rails simple auth"

  		redirect_to root_path
  	else
  		flash.now[:danger] = "Your email or password does not match"
  		render 'new'
  	end
  end

  def destroy
  	session[:user_id] = nil
  	flash[:success] = "Good bye"
  	redirect_to root_path
  end
end
