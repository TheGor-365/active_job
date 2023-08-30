Rails.application.routes.draw do
  root "welcome#homepage"
  resources :books
end
