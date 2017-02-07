Rails.application.routes.draw do
  resources :visitors, only: :index

  get 'test_pages/index'
  get 'test_pages/show'
  root 'test_pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
