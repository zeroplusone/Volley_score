Rails.application.routes.draw do
  root to: redirect('/teams')
  resources :match_sets
  resources :matches
  resources :courts
  resources :users
  resources :teams
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
