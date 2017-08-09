class RegistrationsController < Devise::RegistrationsController

	def new
		@user = User.new
	end

	def create
	  @user = User.create(user_params)
	  if @user.save!
	  	sign_in_and_redirect @user
	  else
	  	redirect_to new_user_registration_url
	  end
	end

	private

	# Use strong_parameters for attribute whitelisting
	# Be sure to update your create() and update() controller methods.

	def user_params
	  params.require(:user).permit(:avatar,:full_name, :email, :password, :password_confirmation, :room_id, :user_id)
	end
end
