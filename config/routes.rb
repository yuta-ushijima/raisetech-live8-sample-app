Rails.application.routes.draw do
  root to: 'fruits#index'

  resources :fruits
  resources :messages, only: %i[index create]
end
