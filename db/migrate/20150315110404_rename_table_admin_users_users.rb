class RenameTableAdminUsersUsers < ActiveRecord::Migration
  def change
    rename_table :admin_users, :users
  end
end
