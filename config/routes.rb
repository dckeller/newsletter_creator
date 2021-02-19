Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :newsletters do 
  		resources :headers
  end 

  get 'close/:id', to: 'newsletters#close', as: 'close'
  get 'open/:id', to: 'newsletters#open', as: 'open' 
  
  root 'newsletters#index'
end
