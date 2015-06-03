class CreateSystemUsersGroupsJoinTable < ActiveRecord::Migration
  def change
    create_table :system_users_groups do |t|
      t.belongs_to :system_user, foreign_key: "id"
      t.belongs_to :user_group, foreign_key: "id"
    end
  end
end
