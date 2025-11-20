Rails.application.routes.draw do
  devise_for :users
  get "tops/index"
  root "tops#index"
  get "home/index"

  get "up" => "rails/health#show", as: :rails_health_check
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  resources :my_menus, only: [ :index, :show, :new, :create, :edit, :update, :destroy ]
  resources :master_menus, only: [ :index, :show, :new, :create, :edit, :update, :destroy ]
end
