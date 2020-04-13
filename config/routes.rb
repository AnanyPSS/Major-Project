Rails.application.routes.draw do

  resources :discussions
  resources :dashboard, only: [:index]
  resources :articles do 
  	resources :comments 
  	member do
  		put 'like', to: "articles#like"
  		put 'unlike', to: "articles#unlike"
  	end
  end

  devise_for :users, controllers: {registrations: 'registrations' }
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "dashboard#index"
end
