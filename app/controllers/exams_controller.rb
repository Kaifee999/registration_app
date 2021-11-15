class ExamsController < ApplicationController
    skip_before_action :verify_authenticity_token

	def index
		@exams = Exam.all
	end

	def new
	end

	def create_exam
		Exam.create(question_paper: params[:question_paper])
		puts params
	end

	def delete_exam
		exam_id = params[:exam_id]
		@exams = Exam.find(exam_id)
		@exams.destroy
	end

	def show_exam
		@questions = Exam.find(params[:exam_id]).questions.all
	end
end
