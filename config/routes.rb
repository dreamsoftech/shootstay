Shootstay::Application.routes.draw do
  get "requests/new"

  get "requests/index"

  get "request/new"

  get "request/index"

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users, :controllers => { :registrations => 'registrations' }
  resources :users do
  	collection do
  		get "apply"
  		get "applied"
  	end
  end
end