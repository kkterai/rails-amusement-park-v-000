Rails.application.routes.draw do

  root 'application#home'

  resources :users
  resources :attractions

  get '/signin' => 'sessions#sign_in'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'
  delete '/signout' => 'sessions#destroy'

end
