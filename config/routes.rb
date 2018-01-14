Rails.application.routes.draw do

  resources :articles

  root to: 'index#welcome'
  get 'about', to: 'index#about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
