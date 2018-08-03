Rails.application.routes.draw do
  resources :cocktails
  resources :coktails do
    resources :doses , only: [:new, :create]
  end

  resources :doses, only: [:delete]
end
