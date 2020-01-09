Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'welcome#home'
  get 'gallery/start', to: 'gallery#start'
  get 'gallery/example', to: 'gallery#example'

  resources :exhibits
end
