Rails.application.routes.draw do
  devise_for :users
  resources :books
  get 'home/index' => 'home#index', as: 'home'
  root 'home#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
