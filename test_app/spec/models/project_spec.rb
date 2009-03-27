require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Project do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :account_id => 1
    }
  end

  it "should create a new instance given valid attributes" do
    Project.create!(@valid_attributes)
  end
end
