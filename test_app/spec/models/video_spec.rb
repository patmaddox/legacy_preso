require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Video do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :project_id => 1
    }
  end

  it "should create a new instance given valid attributes" do
    Video.create!(@valid_attributes)
  end
end
