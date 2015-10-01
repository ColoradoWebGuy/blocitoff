Rails.application.routes.draw do
  resources :checklists

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  root to: 'welcome#index'

end
