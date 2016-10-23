Rails.application.routes.draw do

  namespace :admin do
    resources :semesters, :departments, :abouts, :notice_boards,:admission_eligibilities,:tuition_fees_groups,:tuition_fees
  #namespace :admin do
    #resources :admission_fees_statuses
  #end
   namespace :admin do
    resources :semesters,:departments,:abouts,
              :notice_boards,:admission_eligibilities,:tuition_fees_groups,:admission_fees_statuses
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

