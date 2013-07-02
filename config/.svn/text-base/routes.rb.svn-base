LawWenda::Application.routes.draw do

  require 'api'
  
  devise_for :users, :path => "account", :controllers => {
    :registrations => :account,
    :sessions => :sessions
  }
  
  match 'account/update_private_token', to: 'users#update_private_token', via: :post, as: :update_private_token_account
  
  resources :nodes
  
  match "questions/node:id" => "questions#node", :as => :node_questions
  
  resources :questions do
    collection do
      get :hot
      get :activity
      get :no_answer
    end
    resources :answers
  end

  namespace :cpanel do
    root to: 'home#index'
    
    resources :users
    resources :site_configs
    resources :sections
    resources :nodes
    resources :questions
    resources :answers
    
    
  end

  root to: 'questions#index'
  # authenticated :user do
  #   root to: 'home#index'
  # end
  # 
  # as :user do
  #   root to: 'devise/registrations#new'
  # end
  
  match "api", :to => "home#api"
  mount LawWenda::API => "/"
  
  match :users, :to => "users#index", :as => :users
  resources :users, :path => "" do
    member do
      
    end
  end
  
end
