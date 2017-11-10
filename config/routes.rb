Rails.application.routes.draw do
  namespace :admin do
    root "home#index"
    resources :posts
    resources :users
  end
  root "home#index"
end
