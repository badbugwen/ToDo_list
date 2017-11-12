Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "to_dos#index"
  resources :to_dos do
    member do
      post :is_done
    end
  end
end
