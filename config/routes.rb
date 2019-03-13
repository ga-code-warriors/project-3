Rails.application.routes.draw do
  get 'comments/create'
  get 'comments/index'
  devise_for :users
  # resources :books
  get 'home/index' => 'home#index', as: 'home'
  root 'home#index'


  resources :books do
   resources :comments
 end

get 'books/:id' => 'books#show', as: 'books_id'


  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
