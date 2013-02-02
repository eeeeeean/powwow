class Membership < ActiveRecord::Base

  belongs_to :user, :group
end