PlantingSeasonAuth::Application.routes.draw do
  root "home#index"
  resources :users
  get "/signup", to: "home#login_signup"
  get "/login",  to: "home#login_signup"
  post "/login", to: "home#login"
  get '/gardens', to: redirect('http://localhost:8080/my-gardens'), as: :gardens
end
