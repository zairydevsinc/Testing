Rails.application.routes.draw do

  # get 'bugs/index'


  # get 'projects/index'

  resources :projects do
    resources :bugs
  end

  root 'dashboards#home'

  get '/dashboard', to: 'dashboard#index', as: :user_root
  post '/projects/:project_id/bugs/:id', to: 'bugs#Bug_Assignment', as: :assign
  post '/projects/:project_id/bugs/:id/status', to: 'bugs#status', as: :status

  devise_for :users, :controllers => {
    registrations: 'users/registrations'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
