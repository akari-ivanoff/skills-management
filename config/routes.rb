Rails.application.routes.draw do
  devise_for :users
  # get 'team_roles/index'
  # get 'skills/index'
  # get 'teams/index'
  # get 'teams/new'
  # get 'teams/show'
  # get 'teams/edit'
  # get 'users/index'
  # get 'users/show'
  # get 'users/edit'
  root to: 'pages#home'
  resources :users
  resources :teams, only: [:index,:new, :create, :show, :edit]
  resources :skills, only: [:index]
  resources :user_skills
  resources :team_roles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
