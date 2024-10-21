
Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  resources :tasks, only: %i[index create show update destroy]
  resources :users, only: %i[index]

  match '*path', to: 'errors#not_found', via: :all
end
