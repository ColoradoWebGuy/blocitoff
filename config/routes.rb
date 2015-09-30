Rails.application.routes.draw do
  get 'welcome/index'

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  root to: 'welcome#index'
end
