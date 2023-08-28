Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  ressources :lessons, only: [:new, :create, :show, :destroy] do
    ressources :favorites, only: [:create]
  end

  ressources :favorites, only: [:destroy]

  ressources :profiles, only: [:show]

  # xp user update route à déterminer (ou déjà gérée par devise_for :users)
end
