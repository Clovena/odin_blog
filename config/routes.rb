Rails.application.routes.draw do
  root "articles#index"

  # get "/articles", to: "articles#index"
  # get "articles/:id", to: "articles#show"
  # For the purposes of incremental training, these were included.
  # However, further along in the exercise, they were replaced by the below.

  resources :articles do
    resources :comments
  end

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
