class StudentAnswer < ApplicationRecord
  belongs_to :exam
  belongs_to :question
  belongs_to :user
end
