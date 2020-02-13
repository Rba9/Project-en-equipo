Rails.application.routes.draw do
  
  post 'projects/:project_id/workers', to: 'projects_workers#create', as: 'projects_workers'
  delete 'projects/:project_id/workers/:worker_id', to:'projects_workers#destroy', as: 'delete_project_worker'
  resources :workers
  resources :projects
  root 'projects#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
