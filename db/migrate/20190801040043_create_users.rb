class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :oauth_uid
      t.string :email
      t.boolean :email_verified

      t.timestamps
    end
  end
end
