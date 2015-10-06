Rails.application.routes.draw do
  resources :checklists, only: [:index, :create, :destroy]

  match "/checklists", to: 'checklists#destroy', via: 'delete'

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  root to: 'welcome#index'

end
