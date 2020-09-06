Rails.application.routes.draw do
  get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :libraries
  resources :books
  resources :genres
  resources :borrowings

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :books do
    member do
      post 'borrow'
      post 'pass_back'
    end
  end

  root 'welcome#index'
end
