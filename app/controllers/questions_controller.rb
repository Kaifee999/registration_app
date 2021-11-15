class QuestionsController < ApplicationController

	def index
		@questions = Question.all
	end

	def new
	end

	def create_question
		Question.create(question: params[:question], first_option: params[:first_option], second_option: params[:second_option], third_option: params[:third_option], fourth_option: params[:fourth_option], correct_option: params[:correct_option], exam_id: params[:exam_id])
	end
end
