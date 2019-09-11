Rails.application.routes.draw do
  get 'status/damon'
  resources :clients
  resources :updates
  devise_for :users
  root 'home#index'
  get 'home/documents'
  get 'home/videos'
  get 'home/clients'
  get 'home/statuscheck'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
resources  :users do
 resources :posts, only: [:index]
end

get 'users/:id/user_posts' => 'users#user_posts', :as => :custom_user_posts



end
