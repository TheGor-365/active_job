require 'sidekiq/web'

Rails.application.routes.draw do
  root "welcome#homepage"
  resources :books

  mount Sidekiq::Web => 'sidekiq'
end
