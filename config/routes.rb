Rails.application.routes.draw do
  get '/books', to: 'books#index', as: 'books'
  get '/books/new', to: 'books#new', as: 'new_book'
  get '/books/:id', to: 'books#show', as: 'book'
  get '/books/:id/edit', to: 'books#edit', as: 'edit_book'
  post '/books', to: 'books#create'
  patch '/books/:id', to: 'books#update'
  delete 'books/:id', to: 'books#destroy'
end
