Rails.application.routes.draw do
  resources :users
  resources :books

  post 'authenticate', to: 'authentication#authenticate'

  get 'users/:id/books' => 'users#books'

  get 'users/:id/books/:id_book' => 'books#show'
end
