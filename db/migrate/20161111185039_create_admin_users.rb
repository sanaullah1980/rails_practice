class CreateAdminUsers < ActiveRecord::Migration
  def up
    create_table :admin_users do |t|
      t.string 'firstname', :limit => 50
      t.column 'lastname', :string, :limit => 50
      t.string 'email' , :limit=> 250
      t.column 'password',:string , :limit=> 15
      t.timestamps null: false
    end
  end

  def down
    drop_table :admin_users
  end
end

