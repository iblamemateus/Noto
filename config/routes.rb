Rails.application.routes.draw do
  root "notes#index"
  resources :notes do 
    member do 
      patch :toggle_pin
    end 
  end 
  
  get "up" => "rails/health#show", as: :rails_health_check

end
