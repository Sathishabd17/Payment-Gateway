Rails.application.routes.draw do
  root 'cards#new'
  get 'new', to: 'cards#new'
  post '/', to: 'cards#create'
end