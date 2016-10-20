Rails.application.routes.draw do
 # namespace :admin do
    #resources :tuition_fees_groups
 # end
  #namespace :admin do
   # resources :abouts
 # end
  namespace :admin do

    resources :semesters,:departments,:abouts,:tuition_fees_groups,:notice_boards,:admission_eligibilities
  end
  #namespace :admin do
   # resources :departments
 # end
   # resources :semesters,:departments,:abouts,:admission_eligibilities

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

