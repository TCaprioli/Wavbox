Rails.application.routes.draw do
 
  resources :viewers
  resources :subs

  #sessions
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome'
  get 'viewer', to: 
  get 'authorized', to: 'sessions#page_requires_login'
  ######
  

  resources :videos
  resources :content_creators, only: [:new, :show, :edit, :update, :create, :destroy]
  root to: 'videos#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
