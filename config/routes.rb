Rails.application.routes.draw do
	
  get 'subjects' , to: "pages#subjects"
  get 'contact' , to: "pages#contact"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'pages#home'
end
