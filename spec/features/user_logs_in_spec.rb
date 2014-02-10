require 'spec_helper'

feature "User" do

  scenario "logs into their account" do
    create(:user,
           :email => "thewatts@thewatts.com",
           :password => "password",
           :password_confirmation => "password")
    visit root_url

    within ".login" do
      fill_in "Email Address", with: "thewatts@thewatts.com"
      fill_in "Password", with: "password"
      click_on "Login"
    end

    within ".flash" do
      expect(page).to have_content "Welcome back, Tyler Long!"
    end
  end

  scenario "can't login with incorrect password" do
    create(:user,
           :email => "thewatts@thewatts.com",
           :password => "password",
           :password_confirmation => "password")
    visit root_url

    within ".login" do
      fill_in "Email Address", with: "thewatts@thewatts.com"
      fill_in "Password", with: "incorrect-password"
      click_on "Login"
    end

    within ".flash" do
      expect(page).to have_content "Email or Password Incorrect"
    end
  end


end
