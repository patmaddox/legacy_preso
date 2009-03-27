class Account < ActiveRecord::Base
  has_many :projects
  
  after_create :create_project
  
  def create_project
    projects.create! :name => "#{name}'s First Project"
  end
end
