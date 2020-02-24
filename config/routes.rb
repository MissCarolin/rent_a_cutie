Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :cuties do
    # collection do
    #   get 'available', to: 'cuties#available'
    # end
    resources :bookings, only: [:new, :create]
  end

  resources :bookings do [:index, :show, :edit, :update, :destroy]
    resources :reviews, only: [:new, :create, :index]
  end
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

#this is another comment
