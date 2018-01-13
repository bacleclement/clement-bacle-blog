Rails.application.routes.draw do
  resources :photos
  # get 'posts/index'

  # get 'posts/new'

  # get 'posts/create'

  # get 'posts/edit'

  # get 'posts/update'

  # get 'posts/destroy'

  get 'pages/about'

  resources :posts

  devise_for :users
  root to: 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
