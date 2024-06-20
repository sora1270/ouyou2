Rails.application.routes.draw do
  devise_for :users

  root to: 'homes#top'
  get 'home/about' => 'homes#about'

  resources :books do
    resources :favorites, only: [:create, :destroy]
  end
  resources :users, only: [:index, :show, :edit, :update]
  get '/search', to: 'searches#search'
end
