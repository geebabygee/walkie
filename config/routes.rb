Rails.application.routes.draw do
  get 'reviews/index'

  get 'reviews/new'

  get 'reviews/create'

  get 'reviews/edit'

  get 'reviews/update'

  get 'reviews/destroy'

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :walks, only: [ :index, :show, :search, :new, :create, :edit, :update ] do
    resources :user_walks, only: [ :index, :create ]
  end
end

