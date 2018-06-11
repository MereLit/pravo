Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope "(:locale)", locale: /en|uk/ do
  root to: 'pages#index'
  resources :posts do
	resources :postcomments
  end
  resources :rozklads do
  resources :predmets
  get 'rozklads/index'
  end
  
  resources :pets

  resources :prepods

  resources :infocenters

  
  resources :events
  get "/not_permission", to: "pages#NotPermission", as:"not_permission"
  get 'pages/info'
  get 'pages/abit'
  get 'pages/stud' 

end
end
 