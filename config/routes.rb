Rails.application.routes.draw do
  devise_for :users
  devise_for :models
 root "posts#index"
 resources :posts
end
