class AddColumnUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :role, :string, :after => "id"
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
