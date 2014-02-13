V1::Application.routes.draw do
  
  devise_for :users, path: '', path_names: { sign_in: "login" }

  root :to => 'home#index'
  
  resources :photos
  resources :photographs
  resources :designs
  resources :pdetails
  resources :homeposts
  resources :releases
  
end
