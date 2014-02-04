require 'spec_helper'

describe HomeController do

  describe "#index" do
    it "should return a status 200" do
      get :index
      expect(response).to be_success
    end
  end

  describe "#login_signup" do
    it "should return a status 200" do
      get :login_signup
      expect(response).to be_success
      expect(assigns(:user)).to be_a User
    end
  end

  describe "#login" do
    it "should login a user with correct credentials" do
      create(:user)
      post :login, { :user => { :email => "tyler.stephen.long@gmail.com",
                                :password => "password" } }

      expect(response).to be_redirect
    end

    it "should redirect users back who have invalid credentials" do
      request.env["HTTP_REFERER"] = login_path
      create(:user)
      post :login, { :user => { :email => "tyler.stephen.long@gmail.com",
                                :password => "!!!!!!!" } }

      expect(flash[:error]).not_to be_nil
      expect(response).to be_redirect
    end
  end
end
