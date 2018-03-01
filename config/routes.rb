Rails.application.routes.draw do
  
  root to: 'pages#index'
  get "/not_permission", to: "pages#NotPermission", as:"not_permission"

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts do
  	resources :postcomments
  end


end
 