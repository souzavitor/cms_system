class CreateSystemUsers < ActiveRecord::Migration
  def change
    create_table :system_users do |t|
      t.string :name, limit: 50, index: true, null: false
      t.string :username, limit: 32
      t.string :password, limit: 32
      t.boolean :st, default: true

      t.timestamps null: false
    end
  end
end
