require 'spec_helper'

describe User do
  describe "validations" do
    it "should be valid with valid attributes" do
      expect(build(:user)).to be_valid
    end
  end
end
