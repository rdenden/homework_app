Rails.application.routes.draw do
  devise_for :users
  root to: 'questions#index'
  resources :questions do
    collection do
      get 'index_q1'
      get 'index_q2'
      get 'index_q3'
      get 'index_q4'
      get 'index_q5'
      get 'index_q6'
      get 'index_q7'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
