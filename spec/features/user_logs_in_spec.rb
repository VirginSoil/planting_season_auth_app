require 'spec_helper'

feature "User" do

  scenario "logs into their account" do
    create(:user, 
           :email => "thewatts@thewatts.com",
           :password => "asdf",
           :password_confirmation => "asdf")
    visit root_url
    click_on "Login"
    expect(current_path).to eq login_path

    within ".login" do
      fill_in "Email Address", with: "thewatts@thewatts.com"
      fill_in "Password", with: "asdf"
      click_on "Login"
    end

    within ".flash" do
      expect(page).to have_content "Welcome back, Tyler Long!"
    end
  end

end
