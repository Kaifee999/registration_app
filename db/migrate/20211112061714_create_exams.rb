class CreateExams < ActiveRecord::Migration[5.0]
  def change
    create_table :exams do |t|
      t.string :question_paper

      t.timestamps
    end
  end
end
