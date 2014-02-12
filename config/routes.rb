PlantingSeasonAuth::Application.routes.draw do
  scope "auth" do
    root "home#login_signup"
    resources :users
    get "/signup", to: "home#login_signup"
    get "/login",  to: "home#login_signup"
    post "/login", to: "home#login"
    get "/gardens", to: redirect("/dashboard")
  end
end
