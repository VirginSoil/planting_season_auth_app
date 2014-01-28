require 'spec_helper'

describe HomeController do
  describe "#index" do 
    it "should return a status 200" do 
      get :index 
      expect(response).to be_success
    end
  end
end
