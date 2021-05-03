Rails.application.routes.draw do
  root "home#index"
  
  devise_for :users
  
  resources :photos
  resources :users do
      resource :follow
      resource :followings
      resource :followers
     end
end
