class StudentAnswersController < ApplicationController

	def exam_questions
		@exam = Exam.find(params[:exam_id])
		@questions = @exam.questions
	end

	def new
		@exam_id = params[:exam_id]
		@question_id = params[:question_id] 
		@user_id = params[:user_id]
	end

	def create_answer
		StudentAnswer.create(answer: params[:answer], exam_id: params[:exam_id], question_id: params[:question_id], user_id: current_user.id)
		puts params
	end
end
