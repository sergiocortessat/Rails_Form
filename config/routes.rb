Rails.application.routes.draw do
  root 'users#index'
  get 'users/:id' => 'users#show', as: :show
  delete 'users/:id' => 'users#destroy', as: :destroy
  resources :users, only: %i[new create edit update]
end



