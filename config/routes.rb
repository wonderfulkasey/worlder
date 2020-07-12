Rails.application.routes.draw do
  devise_for :models
  #devise_for :users
  #devise_for :users
  devise_for :users, :controllers => { omniauth_callbacks: "callbacks" }
  get 'user/show'
  
  get 'welcome/index'

 
  resources :worlds do
    resources :comments
  end

  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
