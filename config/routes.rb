Rails.application.routes.draw do
  namespace :admin do
    resources :semesters
  end
  namespace :admin do
    resources :departments
  end
  resources :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
