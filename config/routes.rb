Rails.application.routes.draw do
  root to: 'questions#index'  
  resources :questions do
    collection do
      get 'index_q1'
      get 'index_a1'   
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
