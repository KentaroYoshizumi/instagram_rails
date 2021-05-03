Rails.application.routes.draw do
  root "home#index"
  
  devise_for :users
  
  resources :photos do
      resources :comments
  end
  resources :users do
      resource :follow
      resource :followings
      resource :followers
     end
end
