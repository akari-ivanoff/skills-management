Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'

  devise_for :users
  resources :users, except: [:new, :create, :destroy] do
    resources :user_skills
  end

  resources :skills

  resources :teams do
    resources :team_roles, except: [:index]
  end
  resources :team_roles, only: [:index]
end

# Models and controllers generation
#
# rails generate model UserSkill self_assessment:integer manager_assessment:integer self_comment:text manager_comment:text experience:text user:references skill:references
# rails generate model Skill name:string description:text skill_category:references
# rails generate model SkillCategory name:string
# rails generate model Site country:string city:string
# rails generate model Team name:string description:text owner_contact:string site:references manager:references
# rails generate model TeamRole occupancy:integer name:string team:references
# rails generate model UserTeamRole team_role:references user:references
# rails generate model TeamRoleSkill team_role:references skill:references

# rails generate controller users index show edit
# rails generate controller teams index new show edit
# rails generate controller user_skills
# rails generate controller skills index
# rails generate controller team_roles index
