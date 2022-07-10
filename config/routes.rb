Rails.application.routes.draw do
  resources :products

  namespace :api, format: { :json }
end
