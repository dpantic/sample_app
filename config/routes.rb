SampleApp::Application.routes.draw do
resources :users do
    member do
      get :following, :followers
    end
  end
  resources :sessions,      only: [:new, :create, :destroy]
  resources :microposts,    only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]

  root to: 'static_page#home'
  
  match '/signup',  to: 'users#new',           via: 'get'
  match '/signin',  to: 'sessions#new',        via: 'get'
  match '/signout', to: 'sessions#destroy',    via: 'delete'
  match '/help',    to: 'static_page#help',    via: 'get'
  match '/about',   to: 'static_page#about',   via: 'get'
  match '/contact', to: 'static_page#contact', via: 'get'
end
