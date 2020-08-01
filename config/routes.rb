Rails.application.routes.draw do
	
  resources :queries do
    member do
      get :update_status
    end
  end

  resources :profiles
  devise_for :users, controllers: { registrations: 'users/registrations' } 
  get 'subjects' , to: "pages#subjects"
  get 'contact' , to: "pages#contact"
  get 'portal' , to: "pages#portal"
  get 'my-profile', to: "pages#myprofile"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'pages#home'
end
