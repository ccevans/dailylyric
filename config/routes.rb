Rails.application.routes.draw do
	resources :lyrics
	
  # get 'pages/home'
  root "pages#home"
  
end
