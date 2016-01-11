Rails.application.routes.draw do
  devise_for :users
	resources :lyrics
	
  get 'pages/dash'
  root "lyrics#index"

    match '/contacts', to: 'contacts#new', via: 'get'
resources "contacts", only: [:new, :create]
  
end
