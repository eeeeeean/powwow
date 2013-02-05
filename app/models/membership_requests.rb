class MembershipRequest < ActiveRecord::Base

  belongs_to :group
  belongs_to :user

  attr_accessible :user_id
  attr_accessible :group_id
end