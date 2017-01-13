Rails.application.routes.draw do
  get 'frontend/home'

  get 'frontend/noticeboard'

  get 'frontend/about'

  get 'frontend/admission_eligibility'

  get 'frontend/tuition_fees'

  get 'frontend/scholarships'

  get 'frontend/how_to_apply'

  get 'frontend/courses/:id', to: 'frontend#courses'

  get 'frontend/news'

  get 'frontend/news/:id', to: 'frontend#news_details'
  
  get 'frontend/event'

  get 'frontend/contact'
  
  namespace :admin do
    resources :mini_sliders
  end
  namespace :admin do
    resources :semesters, :departments, :abouts, :notice_boards,:admission_eligibilities,:tuition_fees_groups,:tuition_fees,
              :admission_fees_statuses,:scholarship_groups,:scholarships,:courses,:news,:icons,:events,:websites,
              :quick_links,:testimonials,:google_maps,:postal_types,:postals,:videos,:social_media,:admission_processes,
              :subjects
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end
end
