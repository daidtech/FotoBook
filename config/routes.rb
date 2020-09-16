Rails.application.routes.draw do
  # devise_for :users

  get '/feeds/photos', to: 'application#feeds_photos'
  get '/feeds/albums', to: 'application#feeds_albums'
  get '/discover/photos', to: 'application#discover_photos'
  get '/discover/albums', to: 'application#discover_albums'

  namespace :profile do
    get '/photos', to: 'public_profiles#photos'
    get '/albums', to: 'public_profiles#albums'
    get '/followers', to: 'public_profiles#follow'
    get '/followings', to: 'public_profiles#follow'

    get '/myphotos', to: 'my_profiles#photos'
    get '/myalbums', to: 'my_profiles#albums'

    get '/myfollowers', to: 'public_profiles#follow'
    get '/myfollowings', to: 'public_profiles#follow'

    get '/edit', to: 'my_profiles#edit'
    put '/', to: 'my_profiles#update'
  end

  resources :photos
  resources :albums

  resources :albums, only: [] do
    resources :photos, only: [:index, :show]
  end

  scope :admin do
    resources :photos, except: [:new, :create]
    resources :albums, except: [:new, :create]
    resources :users, except: [:new, :create]
  end

  root to: "application#feeds"
end
