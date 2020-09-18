Rails.application.routes.draw do
  # devise_for :users
  get '/users/login', to: 'users#login'
  get '/users/signup', to: 'users#signup'

  get '/feeds/photos', to: 'home#feeds_photos'
  get '/feeds/albums', to: 'home#feeds_albums'
  get '/discover/photos', to: 'home#discover_photos'
  get '/discover/albums', to: 'home#discover_albums'

  #public profiles
  resources :users, only: [] do
    member do
      get '/photos', to: 'public_profile/photos#index'
      get '/albums', to: 'public_profile/albums#index'
      get '/followers', to: 'followers#index'
      get '/followings', to: 'followings#index'
    end
  end

  get '/followers', to: 'followers#index'
  get '/followings', to: 'followings#index'

  get '/profiles/edit', to: 'profiles#edit'
  put '/profiles', to: 'profiles#update'

  resources :photos
  resources :albums

  scope :admin do
    resources :photos, except: [:new, :create]
    resources :albums, except: [:new, :create]
    resources :users, except: [:new, :create]
  end

  root to: "home#feeds_photos"
end
