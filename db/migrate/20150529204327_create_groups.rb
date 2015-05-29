class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name, limit: 50, null: false
      t.string :slug, limit: 50
      t.boolean :st, default: true

      t.timestamps null: false
    end
  end
end
