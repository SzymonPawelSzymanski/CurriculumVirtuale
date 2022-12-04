Rails.application.routes.draw do
  devise_for :models
  devise_for :users
  root to: "articles#index"

  match 'users/:id' => 'users#destroy', :via => :delete, :as => :admin_destroy_user

  get "article/:id/add_stuff" => "articles#add_stuff", :as => "add_stuff_article"
  get "user/:id/contact_info/edit" => "contact_infos#edit", :as => "edit_contact_infos"
  get "contact_infos/index" => "contact_infos#index", :as => "index_contact_infos"

  resources :articles do
    resources :experiences
    resources :duties
    resources :users
  end

  resources :users do
    resources :contact_infos
  end
end
