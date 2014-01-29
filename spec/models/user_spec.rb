require 'spec_helper'

describe User do
  describe "validations" do
    it "should be valid with valid attributes" do
      expect(build(:user)).to be_valid
    end
  end
  it "should be invalid with short password" do
    user = build(:user, :password => "12", :password_confirmation => "12")
    expect(user.valid?).to be_false
  end
end
