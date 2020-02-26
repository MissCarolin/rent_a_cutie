Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'

  # User Dashboard roots
  get "dashboard/home", to: "dashboard#home", as: "dashboard"
  get "dashboard/cuties", to: "dashboard#cuties"

  resources :cuties do
    collection do
      get 'type_of', to: 'cuties#type_of'
    end
    resources :bookings, only: [:new, :create]
  end
  resources :bookings do [:index, :show, :edit, :update, :destroy]
    resources :reviews, only: [:new, :create, :index]
  end
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
