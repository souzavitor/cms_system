class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.references :system_user, foreign_key: true
      t.text :about, null: false
      t.string :gender, limit: 1, null: false
      t.date :birthdate, null: false

      t.timestamps null: false
    end
  end
end
