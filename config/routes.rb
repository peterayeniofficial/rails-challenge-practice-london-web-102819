Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :buildings, only: [:show, :edit, :index, :update]
  resources :companies, only: [:new, :show, :update, :index, :destroy]
  resources :employees, only: [:new, :destroy, :create]

end
