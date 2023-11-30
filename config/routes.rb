Rails.application.routes.draw do
  root to: "pages#home"
  get '/contact', to: 'contact#new', as: 'new_contact'
  post '/contact', to: 'contact#create', as: 'create_contact'
  get '/about', to: 'pages#about', as: 'about'
  get '/blog', to: 'pages#blog', as: 'blog'
  get 'article', to: 'pages#article', as: 'article'
end
