class MembershipTable < ActiveRecord::Migration
  def up
    create_table :memberships do |t|
      t.integer :user_id
      t.integer :group_id
    end
  end

  def down
    drop_table :memberships
  end
end
