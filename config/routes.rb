Rails.application.routes.draw do
  root to: "restaurants#index"
  resources :restaurants, only: [:index, :new, :show] do
    resources :reviews, only: [:new]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
