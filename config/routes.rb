Rails.application.routes.draw do
 # namespace :admin do
    #resources :tuition_fees
  #end
  namespace :admin do
    resources :semesters, :departments, :abouts, :notice_boards,:tuition_fees
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

