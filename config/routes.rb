Rails.application.routes.draw do
  get 'comments/create'
  get 'comments/index'
  devise_for :users
  resources :books
  # root 'books#index'
  root 'home#index'
  get 'home/index', as:'home'
  resources :books do
    resources :comments
  end
  get 'books/:id' => 'books#show', as:'books_id'
  get 'books/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
