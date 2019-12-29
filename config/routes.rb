Rails.application.routes.draw do
  devise_for :teachers
  devise_for :users

  namespace :teacher do
    resource :dashboard, only: [:show] do
      resources :myclass, only: [:show]

      resources :children, only: [:show] do
        get :overview
        resources :pick_up
        resources :eat
        resources :misc
        resources :medcine
      end
    end
  end
  
  resource :dashboard, only: [:show] do
    resources :children, only: [:show] do
      get :overview
      resources :pick_up
      resources :eat
      resources :misc
      resources :medcine
    end
  end

  resources :teachers do
    member do
      get :student
    end
  end
  root 'teachers#index'
end
  resources :children
  
end
