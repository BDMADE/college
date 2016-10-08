Rails.application.routes.draw do
  namespace :admin do
    resources :notice_boards
  end
  #namespace :admin do
   # resources :abouts
 # end
  namespace :admin do
    resources :semesters,:departments,:abouts
  end
  #namespace :admin do
   # resources :departments
 # end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

