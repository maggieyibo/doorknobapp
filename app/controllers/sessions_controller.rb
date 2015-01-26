class SessionsController < ApplicationController
	def new
	end

	def create
		user = User.find_by(username: params[:user][:username])
		if user && user.authenticate(params[:user][:password])

			flash[:success] = "Login Successful"
			session[:user_id] = user.id
			redirect_to user_path(user.id)
		else
			flash.now[:danger] = "Unable to Login, Please try again!"
			render :new
		end
	end

	def destroy
		session[:user_id]= nil
		redirect_to login_path
	end


end
