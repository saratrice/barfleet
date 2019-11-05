class CreateMemberships < ActiveRecord::Migration[6.0]
  def change
    create_table :memberships do |t|
      t.references :profile, null: false, foreign_key: true
      t.references :division, null: false, foreign_key: true
      t.boolean :active

      t.timestamps
    end
  end
end
