Rails.application.routes.draw do

  get 'pages/about'

  resources :posts do
    member do
      get 'statusState'
    end
  end

  devise_for :users
  root to: 'posts#index'
end
