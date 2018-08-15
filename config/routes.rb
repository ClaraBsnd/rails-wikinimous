Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Create
  get 'articles/new', to: 'articles#new', as: :new_article
  post 'articles', to: 'articles#create'

  # Read
  get 'articles', to: 'articles#index'
  get 'articles/:id', to: 'articles#show', as: :article

  # Update
  get 'articles/:id/edit', to: 'articles#edit', as: :edit_article
  patch 'articles/:id', to: 'articles#update'

  # Delete
  delete 'articles/:id', to: 'articles#destroy', as: 'delete_article'
end
