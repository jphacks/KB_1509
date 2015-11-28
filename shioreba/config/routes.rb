Rails.application.routes.draw do

  root 'users#index'

  resources :users, path: 'user'
  get 'update' => 'recordes#save_recorde'

end
