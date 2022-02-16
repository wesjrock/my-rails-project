Rails.application.routes.draw do
  get 'users' => 'users#index'
  get 'users/new' => 'users#new'
  post 'users' => 'users#create'
  get 'users/edit' => 'users#edit'
  put 'users' => 'users#update'
  delete 'users/:id' => 'users#destroy'
  get 'users/:id' => 'users#show', as: :user
end
