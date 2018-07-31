Tolk::Engine.routes.draw do
  root :to => 'locales#index'

  if Tolk.config.allow_dump_all
    post "/dump_all" => "locales#dump_all", :as => :dump_all_locales
  end

  get "/stats" => "locales#stats"

  resources :locales do
    member do
      get :all
      get :updated
    end
  end
  resource :search
end
