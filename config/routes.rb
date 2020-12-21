Rails.application.routes.draw do

  root  'home#index'
  get 'home', to: 'home#index'

  namespace :api, format: 'json' do
    resources :memos, only: [:index, :create]
  end
end
