class ApplicationController < ActionController::Base
  def current_user
    @current_user ||= User.find(session[:user_id])
  end
  
  def self.require_authorization(*actions)
    actions.each do |a|
      before_filter :check_authorization, :only => a
    end
  end
  
  def check_authorization
    unless object.send("can_#{action_name}?", current_user)
      redirect_to object
    end
  end
end
