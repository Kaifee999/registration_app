class CreateStudentAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :student_answers do |t|
      t.string :answer
      t.references :exam, foreign_key: true
      t.references :question, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
