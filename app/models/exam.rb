class Exam < ApplicationRecord
	has_many :questions, dependent: :delete_all
	has_many :student_answers

	def total_score
		self.questions.count
	end

	def marks(user_id)
		marks = 0
		self.questions.each do |question|
			if StudentAnswer.where(user_id: user_id, question_id: question.id).present? && question.correct_option == StudentAnswer.where(user_id: user_id, question_id: question.id).first.try(:answer)
				marks += 1
			else
				marks += 0
			end
		end
		marks
	end
end




