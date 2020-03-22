Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  root 'books#index'
  resources :books do
    resources :comments, only: [:create, :destroy]
  end
  resources :users, only: [:show]
  
end