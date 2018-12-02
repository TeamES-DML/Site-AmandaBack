Rails.application.routes.draw do
  resources :formularios
  devise_for :users
  root to: "pages#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'formularios/aceitos'
  get 'formularios/recusados'
end
