Rails.application.routes.draw do
  get 'clean_blog/index'
  get '/' => "sessions#welcome"
  get '/login' => "sessions#new"
  post '/login' => "sessions#login"
  get '/signup' => 'users#new'
  delete '/logout' => 'sessions#destroy'
  resources :options
  resources :votes
  resources :subjects
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
