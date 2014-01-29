PlantingSeasonAuth::Application.routes.draw do
  root "home#index"
  resources :users
  get "/signup", to: "home#login_signup"
  get "/gardens", to: redirect("/")
end
