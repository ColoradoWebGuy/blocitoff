Rails.application.routes.draw do
  resources :checklists, only: [:index, :create]

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  root to: 'welcome#index'

end
