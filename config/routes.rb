Rails.application.routes.draw do
  root to: "pages#home"
  resources :contact_messages, only: [:new, :create]
  get '/contact', to: 'contact_messages#new', as: 'new_contact'
  post '/contact', to: 'contact_messages#create', as: 'create_contact'
  get '/about', to: 'pages#about', as: 'about'
  get '/blog', to: 'pages#blog', as: 'blog'
  get 'article', to: 'pages#article', as: 'article'
  get 'services/projets_sur_mesure', to: 'services#projets_sur_mesure', as: 'services_projets_sur_mesure'
  get 'services/modernisation_projets', to: 'services#modernisation_projets', as: 'services_modernisation_projets'
  get 'services/maintenance_active', to: 'services#maintenance_active', as: 'services_maintenance_active'
  get 'services/contenu_seo_strategique', to: 'services#contenu_seo_strategique', as: 'services_contenu_seo_strategique'
end
