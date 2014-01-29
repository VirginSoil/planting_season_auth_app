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
end
