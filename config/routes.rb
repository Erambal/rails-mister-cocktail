Rails.application.routes.draw do
  root to: 'cocktails#index'
  resources :cocktails do
    resources :dose, only: %i[create new destroy]
  end
  get 'cocktails/ingredient'
  get 'cocktails/dose'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
