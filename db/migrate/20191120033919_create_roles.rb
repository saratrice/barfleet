class CreateRoles < ActiveRecord::Migration[6.0]
  def change
    create_table :roles do |t|
      t.string :name
      t.text :description
      t.boolean :head
      t.references :division, null: true, foreign_key: true
      t.references :department, null: true, foreign_key: true

      t.timestamps
    end

    add_reference :memberships, :role, index: true, null: true
    add_foreign_key :memberships, :roles
  end
end
