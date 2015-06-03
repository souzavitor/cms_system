class CreateUserGroups < ActiveRecord::Migration
  def change
    create_table :user_groups do |t|
      t.string :slug, limit: 40
      t.string :name, limit: 50
      t.text :description
      t.boolean :st

      t.timestamps null: false
    end
  end
end
