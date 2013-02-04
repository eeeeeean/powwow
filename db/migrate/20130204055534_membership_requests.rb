class MembershipRequests < ActiveRecord::Migration
  def up
    create_table :membership_requests do |t|
      t.integer :group_id
      t.integer :user_id
    end
  end

  def down
    drop_table :membership_requests
  end
end
