Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'welcome#home'
  get 'selection/adding/:id', to: 'selections#adding', as: 'adding'
  get 'selection/clear', to:'selections#clear', as: 'clear_selection'
  resources :exhibits
  resources :selections
end
