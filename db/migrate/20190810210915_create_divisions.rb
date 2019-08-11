class CreateDivisions < ActiveRecord::Migration[5.2]
  def change
    create_table :divisions do |t|
      t.string :type
      t.string :name
      t.string :location
      t.string :description

      t.timestamps
    end
  end
end
