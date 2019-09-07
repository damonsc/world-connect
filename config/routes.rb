Rails.application.routes.draw do
  root 'home#index'
  get 'home/documents'
  get 'home/videos'
  get 'home/clients'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
