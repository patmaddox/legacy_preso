class Boat < ActiveRecord::Base
  belongs_to :owner, :class_name => "User"
  
  def can_update?(user)
    user == owner ||
      user.admin? ||
      !claimed?
  end
  
  def claimed?
    owner
  end
end
