class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :encrypted_password
      t.string :reset_password_token
      t.string :provider
      t.string :uid
      t.date :birthday

      t.timestamps
    end

    add_index :users, :email
    add_index :users, [:provider, :uid]
    add_index :users, :reset_password_token
  end
end
