Rails.application.routes.draw do

  # get 'bugs/index'
  # get 'projects/index'

  resources :projects do
    resources :bugs
  end

  root 'dashboards#home'
  post '/projects/:project_id/bugs/:id', to: 'bugs#Bug_Assignment', as: :assign
  post '/projects/:project_id/bugs/:id/status', to: 'bugs#status', as: :status

  devise_for :users, :controllers => {
    registrations: 'users/registrations'
  }

end
