Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/feeds', to: 'application#feeds'
  get '/discover', to: 'application#discover'

  resources :users, only: [:show] do
    resources :photos, only: [:index]
  end
  resources :photos
  # scope module: 'admin' do
  #   resources :articles, :comments
  # end
end
