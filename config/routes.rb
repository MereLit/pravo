Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#index'
  get "/not_permission", to: "pages#NotPermission", as:"not_permission"
  get 'pages/info'
  get 'pages/abit'
  get 'pages/stud'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts do
  	resources :postcomments

  end
  resources :events


end
 