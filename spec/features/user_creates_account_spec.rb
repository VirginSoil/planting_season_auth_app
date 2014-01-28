require 'spec_helper'

feature "User" do
  scenario "visits sign up page and creates an account" do
    visit root_path
    click_on "Sign Up"
    expect(current_path).to eq login_path
    within ".signup" do
      fill_in "Full Name", with: "Tyler Long"
      fill_in "Email Address", with: "thewatts@thewatts.com"
      fill_in "Phone Number", with: "3333333333"
      fill_in "Password", with: "asdf"
      fill_in "Password Confirmation", with: "asdf"
      click_on "Create Account"
    end
    expect(page.content).to include "Thanks, Tyler Long, for Signing Up!"
  end
end
