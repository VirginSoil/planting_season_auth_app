require 'spec_helper'

feature "User" do
  scenario "visits sign up page and creates an account" do
    visit root_path
    click_on "Sign Up"
    expect(current_path).to eq signup_path

    within ".signup" do
      fill_in "Full Name", with: "Tyler Long"
      fill_in "Email Address", with: "thewatts@thewatts.com"
      fill_in "Phone Number", with: "3333333333"
      fill_in "Password", with: "password"
      fill_in "Password Confirmation", with: "password"
      click_on "Create Account"
    end

    expect(page).to have_redirect
  end
end

