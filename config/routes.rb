PlantingSeasonAuth::Application.routes.draw do
  root "home#index"
  get "/signup", to: "home#login_signup"
end
