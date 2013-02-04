class Membership < ActiveRecord::Base

  belongs_to :user
  belongs_to :group

  attr_accessible :group_id
  attr_accessible :user_id
end