Rails.application.routes.draw do

  root 'session#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  get '/welcome', to: 'sessions#show'
  get '/secrets', to: 'secrets#show'

end
