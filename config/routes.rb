Rails.application.routes.draw do
  devise_for :models
  devise_for :users
  root to: "articles#index"

  match 'users/:id' => 'users#destroy', :via => :delete, :as => :admin_destroy_user

  resources :articles
  resources :users
end
