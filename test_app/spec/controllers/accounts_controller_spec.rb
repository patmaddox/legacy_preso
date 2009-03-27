require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe AccountsController, "POST create" do
  def do_post
    post :create, :account => {:name => "Nike"}
  end
  
  it "should create a project for the account" do
    do_post
    Account.first.should have(1).project
  end
  
  xit "should create a video for the project" do
    do_post
    Account.first.projects.first.should have(1).video
  end
end
