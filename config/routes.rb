Rails.application.routes.draw do
  root to: 'questions#index'
  resources :questions, only: [:index, :new, :create, :show,] do
    resources :answers, onlry: :create
  end
  
end
