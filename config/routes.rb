Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'welcome#home'
  get 'selection/adding/:id', to: 'selections#adding', as: 'adding'
  #patch 'selection/new', to: 'selection#new'
  resources :exhibits
  resources :selections
end
