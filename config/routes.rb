Rails.application.routes.draw do
  get 'messages/index'
  root to: 'fruits#index'

  resources :fruits

end
