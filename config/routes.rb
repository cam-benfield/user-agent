Rails.application.routes.draw do
  get 'welcome/index'

  root 'welcome#index'

  resources :modern_browsers

  resources :articles

  resources :visitors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
