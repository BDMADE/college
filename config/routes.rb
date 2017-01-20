Rails.application.routes.draw do
  mount Signup::Engine, at: '/'
  ## this is frontend part
  root 'frontend#home'

  get 'notice_boards', to: 'frontend#noticeboard'

  get 'abouts', to:'frontend#about'

  get 'admission_eligibility', to: 'frontend#admission_eligibility'

  get 'tuition_fees', to: 'frontend#tuition_fees'

  get 'scholarships', to: 'frontend#scholarships'

  get 'how_to_apply', to: 'frontend#how_to_apply'

  get 'courses/:id', to: 'frontend#courses'

  get 'news' ,to:'frontend#news'

  get 'news/:id', to: 'frontend#news_details'
  
  get 'events', to:'frontend#event'

  get 'contact', to: 'frontend#contact'

  post 'contact', to: 'frontend#create_contact'
 ## this is admin part
  namespace :admin do
    get 'dashboard', to:'dashboard#index'
    resources :semesters, :departments, :abouts, :notice_boards,:admission_eligibilities,:tuition_fees_groups,:tuition_fees,
              :admission_fees_statuses,:scholarship_groups,:scholarships,:courses,:news,:icons,:events,:websites,
              :quick_links,:testimonials,:google_maps,:postal_types,:postals,:videos,:social_media,:admission_processes,
              :subjects, :mini_sliders, :sliders, :contacts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end
end
