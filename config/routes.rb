Rails.application.routes.draw do
  root to: 'bookmarks#index'
  resources :bookmarks
  resources :categories
  resources :groups
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
