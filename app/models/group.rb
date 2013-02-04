class Group < ActiveRecord::Base

  has_many :membership_requests
  belongs_to :user

  attr_accessible :name
  attr_accessible :user_id

end