Rails.application.routes.draw do
  root to: redirect('/books')
  get '/books', to: 'books#books', as: 'books'
  get '/authors', to: 'books#authors', as: 'authors'
  get '/genres', to: 'books#genres', as: 'genres'

  get '/:id', to: 'books#show', as: 'book'
end
