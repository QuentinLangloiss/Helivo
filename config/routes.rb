Rails.application.routes.draw do
  root to: "pages#home"
  resources :contact_messages, only: [:new, :create]
  get '/contact', to: 'contact_messages#new', as: 'new_contact'
  post '/contact', to: 'contact_messages#create', as: 'create_contact'
  get '/about', to: 'pages#about', as: 'about'
  get '/blog', to: 'pages#blog', as: 'blog'
  get 'article', to: 'pages#article', as: 'article'
end
