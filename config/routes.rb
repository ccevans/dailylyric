Rails.application.routes.draw do
	resources :lyrics
	
  # get 'pages/home'
  root "lyrics#index"

    match '/contacts', to: 'contacts#new', via: 'get'
resources "contacts", only: [:new, :create]
  
end
