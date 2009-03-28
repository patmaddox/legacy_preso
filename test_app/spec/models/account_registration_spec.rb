require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe AccountRegistration do
  before(:each) do
    @valid_attributes = {
      :account_id => 1
    }
  end

  it "should create a new instance given valid attributes" do
    AccountRegistration.create!(@valid_attributes)
  end
end
