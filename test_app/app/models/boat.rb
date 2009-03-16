class Boat < ActiveRecord::Base
  belongs_to :owner, :class_name => "User"

  def can_update?(user)
    user == owner || user.admin? || owner.blank?
  end
end