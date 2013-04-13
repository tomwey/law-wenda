LawWenda::Application.routes.draw do
  devise_for :users

  authenticated :user do
    root to: 'home#index'
  end
  
  as :user do
    root to: 'devise/registrations#new'
  end
  
end
