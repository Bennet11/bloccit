Rails.application.routes.draw do
  resources :topics do
  resources :posts, except: [:index]
  resources :sponsoredposts, only: [:show, :new, :edit]
end
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  get 'about' => 'welcome#about'
  root 'welcome#index'
end
