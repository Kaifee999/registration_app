Rails.application.routes.draw do
  root 'exams#index'
  get '/exams' => 'exams#index'
  get '/exams/new' => 'exams#new'
  post '/exams/create_exam' => 'exams#create_exam'
  delete '/exams/:exam_id/delete_exam' => 'exams#delete_exam', as: :delete_exam
  get '/exams/:exam_id/show_exam' => 'exams#show_exam', as: :show_exam
  get '/questions' => 'questions#index'
  get '/exams/:exam_id/questions/new' => 'questions#new', as: :new_question
  post '/exams/:exam_id/questions/create_question' => 'questions#create_question', as: :create_question
  get '/exams/:exam_id/questions' => 'student_answers#exam_questions', as: :exam_question
  get '/exams/:exam_id/questions/:question_id/student_answers/new' => 'student_answers#new', as: :new_student_answer
  post '/exams/:exam_id/questions/student_answers/create_answer' => 'student_answers#create_answer', as: :create_student_answer
  get '/user/index' => 'user#index'
  get '/user/:user_id/view_result' => 'user#view_result', as: :view_result

    devise_for :users, :controllers => {registrations: 'registrations'}

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

