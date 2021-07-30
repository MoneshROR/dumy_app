Rails.application.routes.draw do

  root 'students#index'

  resources :principles
  resources :teachers

  resources :students do
    resources :studentclasses 
  end  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
