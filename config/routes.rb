Rails.application.routes.draw do

  get 'users/profile' 
  #get 'users/:id', :to => 'users#profile', :as => :user

  devise_for :admins
  devise_for :users
  devise_for :models
  resources :users
  resources :categories do
    resources :products do
      resources :reviews
    end
  end

  root 'categories#index'
end
