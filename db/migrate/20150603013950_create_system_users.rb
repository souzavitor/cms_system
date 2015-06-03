class CreateSystemUsers < ActiveRecord::Migration
  def change
    create_table :system_users do |t|
      t.string :name, limit: 70, null: false, index: true
      t.string :email, limit: 100
      t.string :username, limit: 30, null: false, index: true, unique: true
      t.string :password, limit: 40, null: false
      t.boolean :st, default: true

      t.timestamps null: false
    end
  end
end
