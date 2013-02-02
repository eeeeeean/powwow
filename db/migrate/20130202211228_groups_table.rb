class GroupsTable < ActiveRecord::Migration
  def up
    create_table :groups do |t|
      t.string     :name
      t.integer    :user_id
    end
  end

  def down
    drop_table :groups
  end
end
