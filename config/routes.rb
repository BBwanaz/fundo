Rails.application.routes.draw do
	
  devise_for :users
  get 'subjects' , to: "pages#subjects"
  get 'contact' , to: "pages#contact"
  get 'portal' , to: "pages#portal"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'pages#home'
end
