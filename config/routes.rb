Rails.application.routes.draw do
  get "master_menus/index"
  devise_for :users
  get "tops/index"
  root "tops#index"
  get "home/index"

  get "up" => "rails/health#show", as: :rails_health_check
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  resources :my_menus do
    collection do
      get :select_from_master    # マスターメニュー選択画面
      post :import_from_master   # 選択したメニューをマイメニューに取り込む
    end
  end

  resources :master_menus
end
