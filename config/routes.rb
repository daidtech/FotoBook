Rails.application.routes.draw do

  scope "(:locale)", locale: /en|vi/ do
    resources :user_tests
    devise_for :users, controllers: { registrations: 'users/registrations' }
    # get '/users/login', to: 'users#login'
    # get '/users/signup', to: 'users#signup'

    get '/feeds/photos', to: 'home#feeds_photos'
    get '/feeds/albums', to: 'home#feeds_albums'
    get '/discover/photos', to: 'home#discover_photos'
    get '/discover/albums', to: 'home#discover_albums'

    # public profiles
    resources :users, only: [] do
      member do
        get '/photos', to: 'public_profile/photos#index'
        get '/albums', to: 'public_profile/albums#index'
        get '/followers', to: 'followers#index'
        get '/followings', to: 'followings#index'
      end
    end

    resources :followers, only: :index
    resources :followings, only: :index

    resource :profile, only: [:edit, :update]

    resources :photos
    resources :albums

    scope :admin do
      resources :photos, except: [:new, :create]
      resources :albums, except: [:new, :create]
      resources :users, except: [:new, :create]
    end
    root to: "home#feeds_photos"
  end
end
