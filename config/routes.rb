Rails.application.routes.draw do
  get 'unverified/unverified-list'
  resources :links
  resources :tasks do
	  collection do
	    get :completed
		get :status
        get :client_task
  	end
  end
  resources :employees
  resources :connect_codes
  resources :client_codes
  resources :logs
  get 'userlist/index'
  resources :payments
  resources :videos

devise_for :users, path: 'users', controllers: { sessions: "users/sessions",
registrations: "users/registrations" }
#devise_for :admin, path: 'admin', controllers: { sessions: "admin/sessions",
#registrations: "admin/registrations"}
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
  get 'home/profileinfo'
  get 'home/sslaclients'
  get 'home/pcclients'
  get 'home/donate'
   get 'home/poc'
   get 'home/adminnotes'
   get 'home/sessiontrack'
   get 'home/admins'
   get 'home/execclients'
   get 'home/unverified'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
resources  :users do
 resources :posts, only: [:index]
 end
 resources  :admins do
 resources :posts, only: [:index]

end



get 'users/:id/user_posts' => 'users#user_posts', :as => :custom_user_posts

resources :userlist, only: [:index] do
  post :impersonate, on: :member
  post :stop_impersonating, on: :collection

end


end
