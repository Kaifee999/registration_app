class UserController < ApplicationController

	def index
		@students = User.where(role: 'student')
	end

	def view_result
		@user = User.find(params[:user_id])
		@exams = @user.exams.distinct
	end
end

    