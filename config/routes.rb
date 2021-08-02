Rails.application.routes.draw do
  devise_for :users

  get 'users/sign_up'
  get 'users/sign_in'
  delete 'users/sign_out'
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to:"prototypes#index"
  resources :users, only: [:new, :show]
  resources :prototypes do
    resources :comments, only: :create
  end
end