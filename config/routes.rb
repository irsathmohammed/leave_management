Rails.application.routes.draw do
  devise_for :users
	devise_scope :user do
	  authenticated :user do
	    root 'leave_managements#index', as: :authenticated_root
	  end

	  unauthenticated do
	    root 'devise/sessions#new', as: :unauthenticated_root
	  end
	end  
  resources :leave_managements
  resources :users
  namespace :admin do
		get '/dashboard', to: 'admin#dashboard'
		resources :users
		resources :leave_managements
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
