Rails.application.routes.draw do
     resources :users
     get 'update' => 'recordes#save_recorde'
end
