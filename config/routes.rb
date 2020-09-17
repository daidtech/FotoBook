Rails.application.routes.draw do
  # devise_for :users
  get '/users/login', to: 'users#login'
  get '/users/signup', to: 'users#signup'

  get '/feeds/photos', to: 'application#feeds_photos'
  get '/feeds/albums', to: 'application#feeds_albums'
  get '/discover/photos', to: 'application#discover_photos'
  get '/discover/albums', to: 'application#discover_albums'

  #public profiles
  get '/users/:user_id/photos', to: 'public_profile/photos#index'
  get '/users/:user_id/albums', to: 'public_profile/albums#index'

  get '/users/:user_id/followers', to: 'followers#index'
  get '/users/:user_id/followings', to: 'followings#index'
  get '/followers', to: 'followers#index'
  get '/followings', to: 'followings#index'

  get '/profiles/edit', to: 'profiles#edit'
  put '/profiles', to: 'mprofiles#update'

  resources :photos
  resources :albums

  scope :admin do
    resources :photos, except: [:new, :create]
    resources :albums, except: [:new, :create]
    resources :users, except: [:new, :create]
  end

  root to: "application#feeds"
end
