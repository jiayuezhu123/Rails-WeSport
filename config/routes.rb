Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show, :edit, :update], shallow: true do
    resources :pks, only: [:new, :create, :show]
    resources :workout_sessions, except: :destroy
  end

  get "all_pks", to: "pks#all_pks", as: :all_pks
  get "users/:id/my_pks", to: "pks#my_pks", as: :my_pks

  resources :exercises
end
