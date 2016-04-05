Rails.application.routes.draw do
  resources :artists, except: [:edit, :update]
end
