LawWenda::Application.routes.draw do
  get "users/index"

  get "users/show"

  devise_for :users, :path => "account", :controllers => {
    :registrations => :account,
    :sessions => :sessions
  }

  root to: 'home#index'
  # authenticated :user do
  #   root to: 'home#index'
  # end
  # 
  # as :user do
  #   root to: 'devise/registrations#new'
  # end
  
  match :users, :to => "users#index", :as => :users
  resources :users, :path => "" do
    member do
      
    end
  end
  
end
