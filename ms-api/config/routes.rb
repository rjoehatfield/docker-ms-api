Rails.application.routes.draw do

  resources :users, only: [:index, :show, :create, :update, :destroy]

  if !Rails.env.production? 
    mount Rswag::Ui::Engine => '/api-docs'
    mount Rswag::Api::Engine => '/api-docs'
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'test', to: 'test#show'
  post 'test', to: 'test#create'
  get 'check', to: 'test#apiCheck'
end
