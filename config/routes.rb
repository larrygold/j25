Rails.application.routes.draw do
  root to: "events#index"
  resources :events
  devise_for :users, :controllers => { registrations: 'registrations'}
  resources :users, only: [:index, :show]
  resources :charges
  post '/events/:id/participate', to: 'events#participate', as: 'participation'
  post '/events/:id/unparticipate', to: 'events#unparticipate', as: 'unparticipation'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
