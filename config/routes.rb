Rails.application.routes.draw do
  get 'sessions/new'

  get 'pages/index'
  get 'profile', to: 'pages#show'
  get 'login', to: 'sessions#new'
  delete 'logout', to: 'sessions#destroy'
  post 'login', to: 'sessions#create'
  root 'pages#index'
end
