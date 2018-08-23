class CreateAdminUsers < ActiveRecord::Migration[5.2]
  def up
    create_table :admin_users do |t|
      t.string "username", :limit => 25
      t.string "password_digest"
      t.string "first_name", :limit => 50
      t.string "last_name", :limit => 50
      t.string "email", :default => '', :null => false, :limit => 100

      t.timestamps
    end
    add_index("admin_users", "username")
  end

  def down
    drop_table :admin_users
  end

end
