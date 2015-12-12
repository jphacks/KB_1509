Rails.application.routes.draw do
  root 'users#index'
  resources :users, path: 'user'
  get 'update' => 'records#save_record'
end
