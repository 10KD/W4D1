Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:create, :destroy, :index, :show, :update]
  resources :artworks, only: [:create, :destroy, :show, :update]
  resources :artwork_shares, only: [:create, :destroy]
  get 'users/:id/artworks', to: 'artworks#index'
#    Prefix Verb   URI Pattern               Controller#Action
#     users GET    /users(.:format)          users#index
# get 'users', to: 'users#index'
#
# #    POST   /users(.:format)          users#create
# post 'users', to: 'users#create'
#
# #  new_user GET    /users/new(.:format)      users#new
# get 'users/new', to: 'users#new', as: 'new_user'
#
# # edit_user GET    /users/:id/edit(.:format) users#edit
# get 'users/:id/edit', to: 'users#edit', as: 'edit_user'
#
# #      user GET    /users/:id(.:format)      users#show
# get 'users/:id', to: 'users#show', as: 'user'
#
# #           PATCH  /users/:id(.:format)      users#update
# patch 'users/:id', to: 'users#update'
#
# #           PUT    /users/:id(.:format)      users#update
# put 'users/:id', to: 'users#update'
#
# #           DELETE /users/:id(.:format)      users#destroy
# delete 'users/:id', to: 'users#destroy'



end
