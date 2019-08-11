class AddAncestryToDivision < ActiveRecord::Migration[5.2]
  def change
    add_column :divisions, :ancestry, :string
    add_index :divisions, :ancestry
  end
end
