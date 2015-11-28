Rails.application.routes.draw do
     resources :users
     get 'recordes/save_recorde' => 'recordes#save_recorde'
end
