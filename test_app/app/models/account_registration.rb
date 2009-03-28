class AccountRegistration < ActiveRecord::Base
  belongs_to :account
  before_create :setup_account
  validates_associated :account
  attr_writer :name
  
  def setup_account
    self.account = Account.create :name => @name
    project = account.projects.create! :name => "#{@name}'s First Project"
    project.videos.create! :name => "#{@name}'s First Video"
  end
end
