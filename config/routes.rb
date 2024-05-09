Rails.application.routes.draw do
  get "job_posts/mine"
  get "job_responses/mine"
  resources :job_posts, :shallow => true do
    resources :job_responses, :except => [:edit, :update]  
  end
  
  devise_for :users
  resources :profiles
  
  root 'home#index'
  get 'home/employer'
  
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
