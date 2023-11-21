Rails.application.routes.draw do
  root to: "pages#home"
  get '/contact', to: 'contact#new', as: 'new_contact'
  post '/contact', to: 'contact#create', as: 'create_contact'
end
