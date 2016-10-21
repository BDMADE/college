Rails.application.routes.draw do
   namespace :admin do
    resources :semesters,:departments,:abouts,
              :notice_boards,:admission_eligibilities,:tuition_fees_groups
  end
   # resources :semesters,:departments,:abouts,:admission_eligibilities
  #end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

