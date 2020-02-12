Rails.application.routes.draw do
 
  resources :viewers
  resources :subs

  #sessions
  get 'signup', to: 'users#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome'
  get 'authorized', to: 'sessions#page_requires_login'
  delete 'logout',  to: 'sessions#destroy'
  ######
  

  resources :videos
  resources :users, only: [:new, :show, :edit, :update, :create, :destroy]
  root to: 'videos#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
