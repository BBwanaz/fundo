Rails.application.routes.draw do
	
  
  resources :queries do
    member do
      get :update_status
      get :set_creator
      get :archive
    end
  end

  resources :subjects do
    resources :lessons
  end

  resources :profiles
  devise_for :users, controllers: { registrations: 'users/registrations' } 
  get 'contact' , to: "pages#contact"
  get 'portal' , to: "pages#portal"
  get 'my-profile', to: "pages#myprofile"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'pages#home'
end
