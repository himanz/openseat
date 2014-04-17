class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to products_url, :notice => "Signed up!"
		else
			redirect_to new_user_url
		end
	end

	def edit
  end

  def update
  end

  def show
  end

  private
  def user_params
  	params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end
end
