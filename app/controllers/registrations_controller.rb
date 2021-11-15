class RegistrationsController < Devise::RegistrationsController

	def sign_up_params
        params.require(:user).permit(:email, :first_name, :last_name, :phone_number, :password, :password_confirmation, :role) 
	end
end
