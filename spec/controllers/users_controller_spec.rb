require 'spec_helper'

describe UsersController do
  describe "#create" do
    it "creates a user with valid params" do
      params = {
        :user => {
          :full_name => "Tyler Long",
          :email => "tyler.stephen.long@gmail.com",
          :phone => "3035551212",
          :password => "asdf",
          :password_confirmation => "asdf"
        }
      }
      expect {
        post :create, params
      }.to change{ User.count }.by(1)

      expect(response).to be_redirect
    end
  end
end
