Rails.application.routes.draw do
  root to: 'cocktails#index'
  resources :cocktails, only: [ :new, :create, :show, :destroy ] do
    resources :doses, only: [ :index, :new, :create, :destroy ]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
