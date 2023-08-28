Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :lessons, only: [:new, :create, :show, :destroy] do
    resources :favorites, only: [:create]
  end

  resources :favorites, only: [:destroy]

  resources :profiles, only: [:show]

  # xp user update route à déterminer (ou déjà gérée par devise_for :users)
end
