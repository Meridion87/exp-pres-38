Rails.application.routes.draw do

  resources :tareas, only: [:index, :show] do
    resources :user_tasks, only: [:create, :update]
  end

  resources :user_task, only: [:index]

  root to: 'tareas#index'

devise_for :users , controllers: {
  registrations: 'user/registrations'
}

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
