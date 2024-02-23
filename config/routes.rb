Rails.application.routes.draw do
  root to: 'fruits#index'

  resources :fruits

  get 'preview', controller: :attachments
end
