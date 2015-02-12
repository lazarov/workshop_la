Rails.application.routes.draw do
  get 'users/show'
  get 'users/:id', :to => 'users#show', :as => :user

  devise_for :admins
  devise_for :users
  devise_for :models
  resources :categories do
    resources :products do
      resources :reviews
    end
  end

  root 'categories#index'
end
