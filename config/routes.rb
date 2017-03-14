Rails.application.routes.draw do

  root 'application#home'

  resources :users
  resources :attractions
  resources :rides

  get '/signin' => 'sessions#sign_in'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'
  delete '/signout' => 'sessions#destroy'
  post '/attractions/:id' => 'users#show'

end
