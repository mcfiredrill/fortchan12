Rails.application.routes.draw do
  resources :posts
  resources :topics

  root 'home#index'
end
