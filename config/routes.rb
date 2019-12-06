Rails.application.routes.draw do
  
  get '/' => "sessions#welcome"
  get '/login' => "sessions#new"
  post '/login' => "sessions#login"
  get '/signup' => 'users#new'
  delete '/logout' => 'sessions#destroy'
  resources :categories
  resources :votes
  resources :subjects do 
      resources :votes, only: [:new, :index]
  end
  resources :users

  get '/auth/google_oauth2/callback' => 'sessions#omniauth'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
