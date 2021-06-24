Rails.application.routes.draw do
  root to: 'fruits#index'

  resources :fruits

end
