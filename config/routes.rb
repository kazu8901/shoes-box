Rails.application.routes.draw do
  get 'users/index'

  get 'users/show'

  devise_for :users
  root "posts#index"
  resources :users, only: [:index, :show]
  resources :posts do
    resources :likes, only: [:create, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
