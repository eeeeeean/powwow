class Group < ActiveRecord::Base

  belongs_to :user

  attr_accessible :name
  attr_accessible :user_id

end