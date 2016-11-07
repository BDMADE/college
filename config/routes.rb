Rails.application.routes.draw do
  #namespace :admin do
   # resources :courses
  #end
  namespace :admin do
    resources :semesters, :departments, :abouts, :notice_boards,:admission_eligibilities,:tuition_fees_groups,:tuition_fees,:admission_fees_statuses,:scholarship_groups,:scholarships,:courses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end
end
