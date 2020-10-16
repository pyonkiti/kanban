Rails.application.routes.draw do
  # get 'list/new'
  # get 'list/create'
  devise_for :users
  #get 'top/index'
  root "top#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :list, only: %i(new create edit update destroy)
end
