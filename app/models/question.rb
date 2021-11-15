class Question < ApplicationRecord
  belongs_to :exam
  has_many :student_answers
end
