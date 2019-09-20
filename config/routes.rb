Rails.application.routes.draw do
  devise_for :admins, path:  'admins', controllers: {
                   sessions: 'admins/sessions', 
                   registrations: 'admins/registrations'}
	  
   devise_for :users, path: 'users' controllers: {
                   sessions: 'users/sessions', 
                   registrations: 'users/registrations'}
	
  get 'uploads/index'
  get 'uploads/new'
  get 'uploads/create'
  get 'uploads/destroy'
  get 'status/damon'
  resources :uploads, only: [:index, :new, :create, :destroy]
  resources :clients
  resources :updates
    
  root 'home#index'
  get 'home/documents'
  get 'home/videos'
  get 'home/clients'
  get 'home/statuscheck'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
resources  :users do
 resources :posts, only: [:index]
 end
 resources  :admins do
 
 
end



get 'users/:id/user_posts' => 'users#user_posts', :as => :custom_user_posts



end
