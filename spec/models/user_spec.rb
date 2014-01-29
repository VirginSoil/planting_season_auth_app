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
  it "should be invalid without a password confirmation" do
    user = build(:user, :password => "password", :password_confirmation => nil)
    expect(user.valid?).to be_false
  end

  it "should be invalid it password and password confimation don't match" do
    user = build(:user, :password => "password",
                 :password_confirmation => "nope")
    expect(user.valid?).to be_false
  end

  it "should have a unique email address" do
    valid_user = create(:user)
    invalid_user = build(:user, :email => valid_user.email)
    expect(invalid_user.valid?).to be_false
  end
end
