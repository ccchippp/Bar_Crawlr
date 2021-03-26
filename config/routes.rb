Rails.application.routes.draw do
  resources :bars
  resources :bar_crawls
  resources :crawls
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
