Rails.application.routes.draw do
    resources :pages, only: [:index, :new, :create]

    root "pages#index"

    get "/portfolio", to: "pages#portfolio"
    get "/reviews", to: "pages#reviews"
    get "/contacts.html.erb", to: "pages#contacts"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


