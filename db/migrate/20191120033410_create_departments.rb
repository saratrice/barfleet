class CreateDepartments < ActiveRecord::Migration[6.0]
  def change
    create_table :departments do |t|
      t.string :name

      t.timestamps
    end

    remove_column :divisions, :type
    add_reference :divisions, :department, index: true, null: true
    add_foreign_key :divisions, :departments
  end
end
