Rails.application.routes.draw do
  
  root 'cocktails#index'

  resources :doses, only: [:destroy]
  resources :cocktails, only: [:index, :new, :show, :create] do
    resources :doses, only: [:new, :create]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
