Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :home do
    collection do
      get "portfolio"
      get "about"
      get "contact_us"
      post "download_resume"
      post "save_contact_details"
    end
  end
  root "home#index"
end
