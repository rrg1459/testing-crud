Rails.application.routes.draw do

  get "up" => "rails/health#show", as: :rails_health_check

  resources :stores do
  end

  root "stores#index"

end
