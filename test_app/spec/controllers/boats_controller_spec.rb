require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe BoatsController do
  before(:each) do
    @boat = Boat.create! :name => "Pequod"
  end
  
  def do_update(user)
    login_as user
    put :update, :id => @boat.to_param, :boat => {:name => "SS Minnow"}
  end
  
  context "boat has an owner" do
    before(:each) do
      @owner = User.create!
      @boat.update_attribute :owner, @owner
    end
    
    it "should work when updated by owner" do
      do_update @owner
      @boat.reload.name.should == "SS Minnow"
    end
    
    it "should work when updated by admin" do
      admin = User.create! :admin => true
      do_update admin
      @boat.reload.name.should == "SS Minnow"
    end
    
    it "should fail when updated by non-owner" do
      nonowner = User.create!
      do_update nonowner
      @boat.reload.name.should == "Pequod"
    end
  end
end
